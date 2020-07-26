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
                ListClasses.Items.Add(new ListItem(c.ClassName, c.ID.ToString()));
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
                
                foreach (ListItem li in ListClasses.Items)
                {
                    if (li.Selected)
                    {
                        UserClass uc = new UserClass();
                        uc.ClassID = Int32.Parse(li.Text);
                        uc.UserID = user.ID;
                        context.AddToUserClasses(uc);
                    }
                }
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