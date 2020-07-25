using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class EditSurvey : System.Web.UI.Page
    {
        Survey survey;
        SurveyAppConString context = new SurveyAppConString();
        public int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            // get the survey id
            id = Int32.Parse(Request.QueryString["ID"]);
            if (!Page.IsPostBack)
            {

                var query = from s in context.Surveys
                            where (s.ID == id)
                            select s;

                survey = query.First<Survey>();

                txtTitle.Text = survey.Title;
                txtDesc.Text = survey.Description;
                txtDate.Text = survey.ExpiresOn.ToString();
                GetTargetQuestions(survey);
            }
        }

        private void GetQuestions(List<Question> questions)
        {
            List<Question> firstBox = context.Questions.ToList();
            for (int i = firstBox.Count-1; i != -1; i--)
            {
                foreach(Question q in questions)
                {
                    if (q.Equals(firstBox.ElementAt(i)))
                    {
                        firstBox.Remove(firstBox.ElementAt(i));
                        break;
                    }
                }
            }
            lbSource.DataSource = firstBox;
            lbSource.DataTextField = "Text";
            lbSource.DataValueField = "ID";
            lbSource.DataBind();

        }
        private void GetTargetQuestions(Survey s)
        {
            List<Question> questions = new List<Question>();
            foreach (SurveyQuestion sq in s.SurveyQuestions)
            {
                Question question = new Question();
                var query = from q in context.Questions
                            where (q.ID == sq.QuestionID)
                            select q;
                question = query.First<Question>();
                questions.Add(question);
            }
            lbTarget.DataSource = questions;
            lbTarget.DataTextField = "Text";
            lbTarget.DataValueField = "ID";

            lbTarget.DataBind();
            GetQuestions(questions);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var query = from s in context.Surveys
                            where (s.ID == id)
                            select s;

                Survey delete_survey = query.First<Survey>();
                //find questions associated with survey
                var query_b = from sq in context.SurveyQuestions
                            where (sq.SurveyID == id)
                            select sq;
                List<SurveyQuestion> removeQuestions = query_b.ToList<SurveyQuestion>();
                //delete questions associated with survey(edit)
                for (int i = removeQuestions.Count()-1; i!= -1; i--)
                {
                    
                    context.SurveyQuestions.DeleteObject(removeQuestions.ElementAt(i));
                }
                //delete survey
                context.Surveys.DeleteObject(delete_survey);

                Survey survey = new Survey();
                survey.Title = txtTitle.Text;
                survey.Description = txtDesc.Text;
                survey.ExpiresOn = Convert.ToDateTime(txtDate.Text.Trim());
                survey.CreatedOn = Convert.ToDateTime(DateTime.Now);
                survey.CreatedBy = 2;
                List<SurveyQuestion> questions = new List<SurveyQuestion>();
                foreach (ListItem li in lbTarget.Items)
                {
                    SurveyQuestion quest = new SurveyQuestion();
                    quest.QuestionID = int.Parse(li.Value);
                    survey.SurveyQuestions.Add(quest);
                    questions.Add(quest);
                }
                context.AddToSurveys(survey);
                context.SaveChanges();
                Response.Redirect("ListSurvey.aspx");
            }



        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnDelete_Click(Object sender, EventArgs e)
        {
            var query = from s in context.Surveys
                        where (s.ID == id)
                        select s;

            survey = query.First<Survey>();

            context.Surveys.DeleteObject(survey);
            try
            {
                context.SaveChanges();
                Response.Redirect("ListSurvey.aspx");
            }
            catch
            {
                txtErrorMessage.Text = "Question is being used in a survey, action cannot be completed.";
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

        protected void btn_Delete(object sender, EventArgs e)
        {
            var query = from s in context.Surveys
                        where (s.ID == id)
                        select s;

            Survey delete_survey = query.First<Survey>();
            //find questions associated with survey
            var query_b = from sq in context.SurveyQuestions
                          where (sq.SurveyID == id)
                          select sq;
            List<SurveyQuestion> removeQuestions = query_b.ToList<SurveyQuestion>();
            //delete questions associated with survey(edit)
            for (int i = removeQuestions.Count() - 1; i != -1; i--)
            {

                context.SurveyQuestions.DeleteObject(removeQuestions.ElementAt(i));
            }
            //delete survey
            context.Surveys.DeleteObject(delete_survey);
            context.SaveChanges();
            Response.Redirect("ListSurvey.aspx");
        }
    }
}