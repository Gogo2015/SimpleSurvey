using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class ManageSurveys : System.Web.UI.Page
    {
        SurveyAppConString context;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Int32.Parse(Request.QueryString["id"]);
            context = new SurveyAppConString();
            var queryclass = from Class cl in context.Classes
                             where (cl.CreatedBy == id)
                             select cl;
            if (!IsPostBack)
            {
                foreach (Class c in queryclass.ToList())
                {
                    ListItem li = new ListItem();
                    li.Text = c.ClassName;
                    li.Value = c.ID.ToString();
                    ListClasses.Items.Add(li);
                }
                ListClasses.DataBind();

                GetQuestions();
            }
        }
        private void GetQuestions()
        {
            List<Question> questions = context.Questions.ToList();
            lbSource.DataSource = questions;
            lbSource.DataTextField = "Text";
            lbSource.DataValueField = "ID";
            lbSource.DataBind();

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                foreach (ListItem lc in ListClasses.Items) {
                    if (lc.Selected == true)
                    {
                        Survey survey = new Survey();
                        survey.Title = txtTitle.Text;
                        survey.Description = txtDesc.Text;
                        survey.ExpiresOn = Convert.ToDateTime(txtDate.Text.Trim());
                        survey.CreatedOn = Convert.ToDateTime(DateTime.Now);
                        survey.CreatedBy = id;
                        survey.Class = Int32.Parse(lc.Value);
                        List<SurveyQuestion> questions = new List<SurveyQuestion>();
                        foreach (ListItem li in lbTarget.Items)
                        {
                            SurveyQuestion quest = new SurveyQuestion();
                            quest.QuestionID = int.Parse(li.Value);
                            survey.SurveyQuestions.Add(quest);
                            questions.Add(quest);
                        }
                        context.AddToSurveys(survey);
                    }
                }
                context.SaveChanges();
                Response.Redirect("ListSurvey.aspx?id=" + id);
            }
        }

        protected void btnAddAll_Click(object sender, EventArgs e)
        {
            foreach (ListItem li in lbSource.Items)
                lbTarget.Items.Add(li);
            lbSource.Items.Clear();
            lbSource.SelectedIndex = -1;
            lbTarget.SelectedIndex = -1;
        }

        protected void btnAddOne_Click(object sender, EventArgs e)
        {
            foreach (ListItem li in lbSource.Items)
                if (li.Selected)
                    lbTarget.Items.Add(li);
            foreach (ListItem li in lbTarget.Items)
                lbSource.Items.Remove(li);
            lbSource.SelectedIndex = -1;
            lbTarget.SelectedIndex = -1;
        }

        protected void btnRemoveOne_Click(object sender, EventArgs e)
        {
            foreach (ListItem li in lbTarget.Items)
                if (li.Selected)
                    lbSource.Items.Add(li);
            foreach (ListItem li in lbSource.Items)
                lbTarget.Items.Remove(li);
            lbSource.SelectedIndex = -1;
            lbTarget.SelectedIndex = -1;
        }

        protected void btnRemoveAll_Click(object sender, EventArgs e)
        {
            foreach (ListItem li in lbTarget.Items)
                lbSource.Items.Add(li);
            lbTarget.Items.Clear();
            lbSource.SelectedIndex = -1;
            lbTarget.SelectedIndex = -1;
        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?id=" + id);
        }

    }
    
}