using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        SurveyAppConString context;

        protected void Page_Load(object sender, EventArgs e)
        {
            context = new SurveyAppConString();
        }

        protected void BtnSubmit(object sender, EventArgs e)
        {
            lbErrorMsg.Text = "";
            lbErrorMsgP.Text = "";
            lbErrorMsgNew.Text = "";
            String username = txtUsername.Text;
            var query = from u in context.Users
                        where (u.UserName == username)
                        select u;
            User user = query.First();
            if (user != null) //A
            {
                if (txtConfirm.Text == txtNew.Text)//B
                {
                    if (user.Password == txtCurrent.Text)//C
                    {
                        user.Password = txtNew.Text;
                        context.SaveChanges();
                        Response.Redirect("LoginPage.aspx");
                    }
                    else//C
                    {
                        lbErrorMsgP.Text = "Current Password Incorrect";
                    }
                }
                else//B
                {
                    lbErrorMsgNew.Text = "New and Confirm Passwords Do Not Match";
                }
            } else//A
            {
                lbErrorMsg.Text = "Username Not Found";
            }
        }

        protected void BtnCancel(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}