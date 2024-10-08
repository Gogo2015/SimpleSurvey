﻿using System;
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
        int id;
        int surveyid;
        SurveyAppConString context;
        protected void Page_Load(object sender, EventArgs e)
        {
            context = new SurveyAppConString();
            id = Int32.Parse(Request.QueryString["id"]);
            surveyid = Int32.Parse(Request.QueryString["surveyid"]);
            SurveyResponseView.DataSource = GetData();

            SurveyResponseView.DataBind();

        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?id=" + id);
        }

        DataTable GetData()
        {
            
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("First Name"));
            dt.Columns.Add(new DataColumn("Last Name"));
            dt.Columns.Add(new DataColumn("User Name"));
            dt.Columns.Add(new DataColumn("ID"));
            dt.Columns.Add(new DataColumn("SurveyID"));
            dt.Columns.Add(new DataColumn("FilledBy"));
            dt.Columns.Add(new DataColumn("FilledSurvey"));
            dt.Columns.Add(new DataColumn("teacherid"));
            

            DataRow newRow;
            List<String> userNames = new List<String>();
            foreach (SurveyResponseView srv in context.SurveyResponseViews.OrderBy(srv => srv.LastName))
            {
                newRow = dt.NewRow();
                if (srv != null)
                {
                    
                    if (!(userNames.Contains(srv.UserName)))
                    {
                        if (srv.SurveyID == surveyid)
                        {
                            newRow[0] = srv.FirstName;
                            newRow[1] = srv.LastName;
                            newRow[2] = srv.UserName;
                            newRow[3] = srv.ID;
                            newRow[4] = srv.SurveyID;
                            newRow[5] = srv.FilledBy;
                            newRow[6] = "Completed";
                            newRow[7] = id;
                            
                            dt.Rows.Add(newRow);
                        }
                        else
                        {
                            newRow[0] = srv.FirstName;
                            newRow[1] = srv.LastName;
                            newRow[2] = srv.UserName;
                            newRow[3] = null;
                            newRow[4] = srv.SurveyID;
                            newRow[5] = srv.FilledBy;
                            newRow[6] = "Incomplete";
                            newRow[7] = id;

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