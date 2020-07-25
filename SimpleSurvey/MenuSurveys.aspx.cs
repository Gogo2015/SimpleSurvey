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
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (Survey survey in context.Surveys)
            {
                ddlTypes.Items.Add(new ListItem(survey.Title, survey.ID.ToString()));
            }

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int id = Int32.Parse(ddlTypes.SelectedItem.Value);

                Response.Redirect("SurveyResponses.aspx?id=" + id);
            }
        }
    }
}