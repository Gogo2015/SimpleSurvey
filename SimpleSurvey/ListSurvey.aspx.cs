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
    public partial class ListSurvey : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Int32.Parse(Request.QueryString["id"]);
            UserView.DataSource = GetData();

            UserView.DataBind();

        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        DataTable GetData()
        {
            SurveyAppConString context = new SurveyAppConString();

            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("Title"));
            dt.Columns.Add(new DataColumn("Description"));
            dt.Columns.Add(new DataColumn("Created On"));
            dt.Columns.Add(new DataColumn("Expires On"));
            dt.Columns.Add(new DataColumn("ID"));

            DataRow newRow;
            var surveyQuery = from Survey s in context.Surveys
                              where (s.CreatedBy == id)
                              select s;
            foreach (Survey s in surveyQuery.ToList())
            {
                if (s != null)
                {
                    newRow = dt.NewRow();
                    newRow[0] = s.Title;
                    newRow[1] = s.Description;
                    newRow[2] = s.CreatedOn;
                    newRow[3] = s.ExpiresOn;
                    newRow[4] = s.ID;
                    dt.Rows.Add(newRow);
                }
            }

            return dt;
        }

        protected void btn_AddSurvey(Object sender, EventArgs e)
        {
            Response.Redirect("ManageSurveys.aspx");
        }
    }
}