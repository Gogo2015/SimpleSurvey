using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    
    public partial class ManageUsers : System.Web.UI.Page
    {
        SurveyAppConString context;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Int32.Parse(Request.QueryString["id"]);
            context = new SurveyAppConString();
            var queryclass = from Class cl in context.Classes
                             where (cl.CreatedBy == id)
                             select cl;
            foreach (Class c in queryclass.ToList())
            {
                ListItem li = new ListItem();
                li.Text = c.ClassName;
                li.Value = c.ID.ToString();
                ListClasses.Items.Add(li);
            }
            ListClasses.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                if (txtUserName.Text.Length >= 5)//A
                {
                    if (txtPassword.Text.Length >= 5) //B
                    {
                        var query = from u in context.Users
                                    where (u.UserName == txtUserName.Text)
                                    select u;
                        if (query.Count() == 0)
                        {
                            User user = new User();
                            user.FirstName = txtFirstName.Text;
                            user.LastName = txtLastName.Text;
                            user.UserName = txtUserName.Text;
                            user.Password = txtPassword.Text;
                            user.Role = 2;
                            context.AddToUsers(user);
                            foreach (ListItem li in ListClasses.Items)
                            {
                                if (li.Selected)
                                {
                                    int classid = Int32.Parse(li.Value);
                                    UserClass uc = new UserClass();
                                    var classquery = from Class c in context.Classes
                                                     where (c.ID == classid)
                                                     select c;
                                    uc.ClassID = classquery.First().ID;
                                    uc.UserID = user.ID;
                                    context.AddToUserClasses(uc);
                                }
                            }
                            context.SaveChanges();
                            Response.Redirect("MenuUserClasses.aspx?id=" + id);
                        }
                        else
                        {
                            txtErrorUser.Text = "Username Already Taken";
                        }
                    }
                    else
                    {
                        txtErrorPass.Text = "Password Too Short";
                    }

                }
            }
        }
        protected void BtnCancel(object sender, EventArgs e)
        {
            Response.Redirect("ListUsers.aspx?id="+id);
        }
        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?id="+id);
        }
    }
}