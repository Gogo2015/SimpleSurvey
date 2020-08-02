using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class EditUser : System.Web.UI.Page
    {
        User user;
        SurveyAppConString context = new SurveyAppConString();
        int id;
        int teacherid;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Int32.Parse(Request.QueryString["ID"]);
            teacherid = Int32.Parse(Request.QueryString["teacher"]);
            if (!Page.IsPostBack)
            { 
                txtPassword.Attributes["type"] = "password";
                // get the user id
                
                context = new SurveyAppConString();
                var queryclass = from Class cl in context.Classes
                                 where (cl.CreatedBy == teacherid)
                                 select cl;
                foreach (Class c in queryclass.ToList())
                {
                    ListItem li = new ListItem();
                    li.Text = c.ClassName;
                    li.Value = c.ID.ToString();
                    ListClasses.Items.Add(li);
                }
                ListClasses.DataBind();



                var query = from u in context.Users
                                where (u.ID == id)
                                select u;

                    user = query.First<User>();

                    txtFirstName.Text = user.FirstName;
                    txtLastName.Text = user.LastName;
                    txtUserName.Text = user.UserName;
                    txtPassword.Text = user.Password;
                    var queryUser = from UserClass cl in context.UserClasses
                                     where (cl.UserID==user.ID)
                                     select cl;
                    foreach (UserClass uc in queryUser.ToList())
                    {
                        var querycl = from Class c in context.Classes
                                      where (c.ID == uc.ClassID)
                                      select c;
                        if (querycl.Count() != 0)
                        {
                        foreach (Class c in querycl.ToList())
                        {
                            ListClasses.Items.FindByValue(c.ID.ToString()).Selected = true;
                        }
                        }
                    }
                
                

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                var query = from u in context.Users
                            where (u.ID == id)
                            select u;

                user = query.First<User>();

                user.FirstName = txtFirstName.Text;
                user.LastName = txtLastName.Text;
                user.UserName = txtUserName.Text;
                user.Password = txtPassword.Text;
                var deleteClasses = from UserClass ucd in context.UserClasses
                                    where (ucd.UserID == user.ID)
                                    select ucd;
                foreach (UserClass uc in deleteClasses.ToList())
                {
                    context.DeleteObject(uc);
                }

                foreach (ListItem li in ListClasses.Items)
                {
                    if (li.Selected)
                    {
                        UserClass uc = new UserClass();
                        uc.ClassID = Int32.Parse(li.Value);
                        uc.UserID = user.ID;
                        context.AddToUserClasses(uc);
                    }
                }
                context.SaveChanges();
                Response.Redirect("MenuUserClasses.aspx?id=" + teacherid);
            }
        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?id="+teacherid);
        }

        protected void btnDelete_Click(Object sender, EventArgs e)
        {
            var query = from u in context.Users
                        where (u.ID == id)
                        select u;

            user = query.First<User>();

            context.Users.DeleteObject(user);
            context.SaveChanges();
            Response.Redirect("ListUsers.aspx");
        }

        protected void BtnReset(Object sender, EventArgs e)
        {
            txtPassword.Text = "test";
        }
    }
}