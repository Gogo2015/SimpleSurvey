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
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                int id = Int32.Parse(Request.QueryString["ID"]);
                LoadClasses(id);
            }
            btnSubmit.Enabled = false;
            if (ddlClasses.SelectedIndex >= 0)
            {
                classid = int.Parse(ddlClasses.SelectedValue);
                PopulateSurveys();
            }
            /*
            foreach (Survey survey in context.Surveys)
            {
                ddlTypes.Items.Add(new ListItem(survey.Title, survey.ID.ToString()));
            }
            */

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int id = Int32.Parse(ddlSurveys.SelectedItem.Value);

                Response.Redirect("SurveyResponses.aspx?id=" + id);
            }
        }

        private void LoadClasses(int id)
        {
            var classQuery = from Class cl in context.Classes
                             where (cl.CreatedBy == id)
                             select cl;
            ddlClasses.DataSource = classQuery;
            ddlClasses.DataTextField = "ClassName";
            ddlClasses.DataValueField = "ID";
            ddlSurveys.DataBind();
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