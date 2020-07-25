using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        SurveyAppConString context;
        protected void Page_Load(object sender, EventArgs e)
        {
            context = new SurveyAppConString();
            foreach (Class c in context.Classes)
            {
                ddlClasses.Items.Add(new ListItem(c.ClassName, c.ID.ToString()));
            }
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
                user.Class = Int32.Parse(ddlClasses.SelectedValue);
                user.Role = 2; //Student User
   
                context.AddToUsers(user);
                context.SaveChanges();
                Response.Redirect("ListUsers.aspx");

            }
        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}