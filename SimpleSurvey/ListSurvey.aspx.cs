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
            Response.Redirect("Menu.aspx?id=" + id);
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
            dt.Columns.Add(new DataColumn("Class"));
            dt.Columns.Add(new DataColumn("teacherid"));
            dt.Columns.Add(new DataColumn("classid"));

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
                    
                    if (s.Class != null)
                    {
                        var classquery = from Class c in context.Classes
                                         where (c.ID == s.Class)
                                         select c;

                        newRow[5] = classquery.First().ClassName;
                        newRow[6] = id;
                        newRow[7] = classquery.First().ID;
                    }
                    else
                    {
                        newRow[5] = s.Class;
                        newRow[6] = id;
                        newRow[7] = "0";
                    }
                    
                    
                    dt.Rows.Add(newRow);
                }
            }

            return dt;
        }

        protected void btn_AddSurvey(Object sender, EventArgs e)
        {
            Response.Redirect("ManageSurveys.aspx?id=" + id);
        }
    }
}