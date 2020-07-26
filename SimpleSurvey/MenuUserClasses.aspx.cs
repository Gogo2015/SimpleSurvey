using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.DynamicData;

namespace SimpleSurvey
{
    public partial class MenuUserClasses : System.Web.UI.Page
    {
        SurveyAppConString context = new SurveyAppConString();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Int32.Parse(Request.QueryString["id"]);
            ddlClasses.DataSource = GetClasses();
            ddlClasses.DataBind();
        }

        protected List<Class> GetClasses()
        {
            var classQuery = from Class c in context.Classes
                             where (c.CreatedBy == id)
                             select c;
            return classQuery.ToList();
        }

        protected void btnSubmit_Click()
        {
            if (ddlClasses.SelectedValue != null)
            {
                Response.Redirect("ListUsers.aspx?class=" + ddlClasses.SelectedValue);
            }
        }
    }
}