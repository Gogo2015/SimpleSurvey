using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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


            var query = from q in context.Questions
                        where (q.ID == id)
                        select q;

            //question = query.First<Question>();

            //question.QuestionType = ddlTypes.SelectedValue;
            //question.Text = txtTitle.Text;
            //question.Options = txtValues.Text;


            context.SaveChanges();
            Response.Redirect("ListQuestions.aspx");

        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnDelete_Click(Object sender, EventArgs e)
        {
            var query = from q in context.Questions
                        where (q.ID == id)
                        select q;

            question = query.First<Question>();

            context.Questions.DeleteObject(question);
            try
            {
                context.SaveChanges();
                Response.Redirect("ListQuestions.aspx");
            }
            catch
            {
                txtErrorMessage.Text = "Question is being used in a survey, action cannot be completed.";
            }


        }
    }
}