using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class AddTeacher : System.Web.UI.Page
    {
        SurveyAppConString context;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Int32.Parse(Request.QueryString["id"]);
            context = new SurveyAppConString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                User user = new User();
                user.FirstName = txtFirstName.Text;
                user.LastName = txtLastName.Text;
                user.UserName = txtUserName.Text;
                user.Password = txtPassword.Text;
                user.Role = 1002; //Teacher User

                context.AddToUsers(user);

                context.SaveChanges();
                Response.Redirect("ListTeachers.aspx?id="+id);

            }
        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?id="+id);
        }

        protected void BtnCancel(object sender, EventArgs e)
        {
            Response.Redirect("ListTeachers.aspx");
        }
    }
}