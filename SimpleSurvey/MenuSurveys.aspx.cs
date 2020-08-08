using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class MenuSurveys : System.Web.UI.Page
    {
        SurveyAppConString context = new SurveyAppConString();
        int classid;
        public int id;
        public int surveyid;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Int32.Parse(Request.QueryString["ID"]);
            ddlSurveys.Items.Clear();
            if (!IsPostBack)
            {
                
                LoadClasses(id);
            }
            /*
            foreach (Survey survey in context.Surveys)
            {
                ddlTypes.Items.Add(new ListItem(survey.Title, survey.ID.ToString()));
            }
            */

        }

        protected void btnFind_Surveys(object sender, EventArgs e)
        {
            classid = int.Parse(ddlClasses.SelectedValue);
            PopulateSurveys();
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                surveyid = Int32.Parse(ddlSurveys.SelectedItem.Value);

                Response.Redirect("SurveyResponses.aspx?id=" + id + "&surveyid=" + surveyid);
            }
        }

        private void LoadClasses(int id)
        {
            var classQuery = from Class cl in context.Classes
                             where (cl.CreatedBy == id)
                             select cl;
            ddlClasses.DataSource = classQuery.ToList();
            ddlClasses.DataTextField = "ClassName";
            ddlClasses.DataValueField = "ID";
            ddlClasses.DataBind();
        }

        protected void PopulateSurveys()
        {
            var surveyQuery = from Survey s in context.Surveys
                              where (s.Class == classid)
                              select s;
            foreach (Survey survey in surveyQuery)
            {
                ddlSurveys.Items.Add(new ListItem(survey.Title, survey.ID.ToString()));
            }
        }
    }
}