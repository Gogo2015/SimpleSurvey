using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SurveyAppConString context = new SurveyAppConString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                
                User user = new User();
                
                user.UserName = txtUserName.Text;
                user.Password = txtPassword.Text;
                user = new User();
                user = LoadUsers();
                if (user != null)
                {
                    txtUserName.Text = "Sucessful Login";
                    if (user.Role == 2) //if student
                        Response.Redirect("SurveyForm.aspx?id=" + user.ID);

                    else if (user.Role == 1002)//if teacher
                        Response.Redirect("Menu.aspx?id="+user.ID);
                    else//if admin
                        Response.Redirect("ListTeachers.aspx?id="+user.ID);
                } 
                else
                {
                    txtUserName.Text = "Failed Login";
                }

            }
        }
        private User LoadUsers()
        {
            
            var query = from u in context.Users
                        where (u.UserName == txtUserName.Text && u.Password == txtPassword.Text)
                        select u;
            if (query.Count() != 0)
            {
                return query.First(); 
            }
            return null;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}