using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class SurveyResponses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SurveyResponseView.DataSource = GetData();

            SurveyResponseView.DataBind();

        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
        
        DataTable GetData()
        {
            SurveyAppConString context = new SurveyAppConString();
            int id = Int32.Parse(Request.QueryString["id"]);
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("First Name"));
            dt.Columns.Add(new DataColumn("Last Name"));
            dt.Columns.Add(new DataColumn("User Name"));
            dt.Columns.Add(new DataColumn("ID"));
            dt.Columns.Add(new DataColumn("SurveyID"));
            dt.Columns.Add(new DataColumn("FilledBy"));
            dt.Columns.Add(new DataColumn("FilledSurvey"));
            

            DataRow newRow;
            List<String> userNames = new List<String>();
            foreach (SurveyResponseView srv in context.SurveyResponseViews.OrderBy(srv => srv.LastName))
            {
                newRow = dt.NewRow();
                if (srv != null)
                {
                    
                    if (!(userNames.Contains(srv.UserName)))
                    {
                        if (srv.SurveyID == id)
                        {
                            newRow[0] = srv.FirstName;
                            newRow[1] = srv.LastName;
                            newRow[2] = srv.UserName;
                            newRow[3] = srv.ID;
                            newRow[4] = srv.SurveyID;
                            newRow[5] = srv.FilledBy;
                            newRow[6] = "Completed";
                            
                            dt.Rows.Add(newRow);
                        }
                        else
                        {
                            newRow[0] = srv.FirstName;
                            newRow[1] = srv.LastName;
                            newRow[2] = srv.UserName;
                            newRow[3] = null;
                            newRow[4] = srv.SurveyID;
                            newRow[6] = srv.FilledBy;
                            newRow[7] = "Incomplete";
                            
                            dt.Rows.Add(newRow);
                        }
                        userNames.Add(srv.UserName);
                    }
                    else
                    {
                        continue;
                    }
                    


                }
            }

            return dt;
        }

    }
}