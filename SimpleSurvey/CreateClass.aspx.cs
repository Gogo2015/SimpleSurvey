using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class CreateClass : System.Web.UI.Page
    {
        SurveyAppConString context;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Int32.Parse(Request.QueryString["id"]);
            context = new SurveyAppConString();
        }

        protected void BtnSubmit(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                
                Class c = new Class();
                c.ClassName = txtClassName.Text;
                c.RegistrationCode = txtCode.Text;
                c.CreatedBy = id;
                context.AddToClasses(c);
                context.SaveChanges();
                Response.Redirect("ViewClasses.aspx?id=" + id);
            }
        }

        protected void BtnCancel(object sender, EventArgs e)
        {
            Response.Redirect("ViewClasses.aspx?id="+id);
        }
    }
}