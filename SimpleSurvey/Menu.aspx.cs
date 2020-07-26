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
                        Response.Redirect("ListSurvey.aspx");
                        break;
                    case "Manage Questions":
                        Response.Redirect("ListQuestions.aspx");
                        break;
                    case "Manage Users":
                        Response.Redirect("MenuUserClasses.aspx?id=0" + id);
                        break;
                    case "Take Survey":
                        Response.Redirect("SurveyForm.aspx");
                        break;
                    case "Survey Responses":
                        Response.Redirect("MenuSurveys.aspx?id=0" + id);
                        break;
                    default:
                        break;


                }

            }
        }
    }
}