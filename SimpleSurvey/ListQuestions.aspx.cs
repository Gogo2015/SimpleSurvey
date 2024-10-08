﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class ListQuestions : System.Web.UI.Page
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
            dt.Columns.Add(new DataColumn("Question"));
            dt.Columns.Add(new DataColumn("Question Type"));
            dt.Columns.Add(new DataColumn("Answer Choices"));
            dt.Columns.Add(new DataColumn("QuestionID"));
            dt.Columns.Add(new DataColumn("ID"));

            DataRow newRow;

            foreach (Question q in context.Questions)
            {
                if (q != null)
                {
                    newRow = dt.NewRow();
                    newRow[0] = q.Text;
                    newRow[1] = q.QuestionType;
                    newRow[2] = q.Options;
                    newRow[3] = q.ID;
                    newRow[4] = id;
                    dt.Rows.Add(newRow);
                }
            }

            return dt;
        }

        protected void btn_AddQuestion(Object sender, EventArgs e)
        {
            Response.Redirect("ManageQuestions.aspx?id=" + id);
        }
    }
}