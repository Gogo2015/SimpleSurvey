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

                if (LoadUsers())
                {
                    txtUserName.Text = "User Found, Sucessful Login";
                    Response.Redirect("Menu.aspx");
                }
                else
                {
                    txtUserName.Text = "User Not Found, Failed Login";
                }

            }
        }
        private Boolean LoadUsers()
        {
            
            var query = from u in context.Users
                        where (u.UserName == txtUserName.Text && u.Password == txtPassword.Text)
                        select u;
            if (query.Count() != 0)
            {
                return true;
            }
            return false;
        }
    }
}