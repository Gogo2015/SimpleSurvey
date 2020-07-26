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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit(object sender, EventArgs e)
        {
            context = new SurveyAppConString();
            Class c = new Class();
            c.ClassName = txtClassName.Text;
            c.RegistrationCode = txtCode.Text;
            context.AddToClasses(c);
            context.SaveChanges();
        }
    }
}