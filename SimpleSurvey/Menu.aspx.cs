using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpContext.Current.Response.AddHeader("Cache-Control", "no-cache, no-store, must-revalidate");
                HttpContext.Current.Response.AddHeader("Pragma", "no-cache");
                HttpContext.Current.Response.AddHeader("Expires", "0");
            }

            
            

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int id = Int32.Parse(Request.QueryString["id"]);
                String val = ddlTypes.SelectedItem.Value;
                switch (val)
                {
                    case "Manage Surveys":
                        Response.Redirect("ListSurvey.aspx?id="+id);
                        break;
                    case "Manage Questions":
                        Response.Redirect("ListQuestions.aspx?id=" + id);
                        break;
                    case "Manage Users":
                        Response.Redirect("MenuUserClasses.aspx?id=0" + id);
                        break;
                    case "Take Survey":
                        Response.Redirect("SurveyForm.aspx?id="+id);
                        break;
                    case "Survey Responses":
                        Response.Redirect("MenuSurveys.aspx?id=" + id);
                        break;
                    case "Manage Classes":
                        Response.Redirect("ViewClasses.aspx?id=" + id);
                        break;
                    default:
                        break;


                }

            }
        }

        protected void btn_Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logout.aspx");
        }
    }
}