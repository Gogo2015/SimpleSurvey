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
        public int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtPassword.Attributes["type"] = "password";
            // get the user id
            id = Int32.Parse(Request.QueryString["ID"]);
            
            if (!Page.IsPostBack)
            {
                foreach (Class c in context.Classes)
                {
                    ddlClasses.Items.Add(new ListItem(c.ClassName, c.ID.ToString()));
                }


                var query = from u in context.Users
                            where (u.ID == id)
                            select u;

                user = query.First<User>();

                txtFirstName.Text = user.FirstName;
                txtLastName.Text = user.LastName;
                txtUserName.Text = user.UserName;
                txtPassword.Text = user.Password;
                ddlClasses.SelectedValue = user.Class.ToString();
                /*
                var classQuery = from c in context.Classes
                            where (c.ID == user.Class)
                            select c;
                ddlClasses.SelectedValue = classQuery.First().ClassName;
                */

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            
            var query = from u in context.Users
                        where (u.ID == id)
                        select u;

            user = query.First<User>();

            user.FirstName = txtFirstName.Text;
            user.LastName = txtLastName.Text;
            user.UserName = txtUserName.Text;
            user.Password = txtPassword.Text;
            user.Class = Int32.Parse(ddlClasses.SelectedValue);
            context.SaveChanges();
            Response.Redirect("ListUsers.aspx");
           
        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
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