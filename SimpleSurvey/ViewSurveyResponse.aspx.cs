using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class ViewSurveyResponse : System.Web.UI.Page
    {
        SurveyAppConString context;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            context = new SurveyAppConString();
            SurveyResponseView.DataSource = ShowSurveyResponse();
            SurveyResponseView.DataBind();
        }

        protected DataTable ShowSurveyResponse()
        {
            SurveyAppConString context = new SurveyAppConString();
            int surveyID = Int32.Parse(Request.QueryString["surveyID"]);
            int filledBy = Int32.Parse(Request.QueryString["filledBy"]);
            id = Int32.Parse(Request.QueryString["ID"]);
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("Question"));
            dt.Columns.Add(new DataColumn("Response"));

            var query = from srdv in context.SurveyResponseDetailedViews
                        where (srdv.SurveyID == surveyID && srdv.FilledBy == filledBy)
                        select srdv;

            DataRow newRow;
            foreach (SurveyResponseDetailedView srdv in query)
            {
                newRow = dt.NewRow();
                newRow[0] = srdv.Text;
                newRow[1] = srdv.Response;
                dt.Rows.Add(newRow);
            }
            return dt;
        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?id=" + id);
        }
    }
}