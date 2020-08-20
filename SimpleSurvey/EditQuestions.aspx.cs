using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class EditQuestions : System.Web.UI.Page
    {
        Question question;
        SurveyAppConString context = new SurveyAppConString();
        public int questionid;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            // get the question id
            id = Int32.Parse(Request.QueryString["ID"]);
            questionid = Int32.Parse(Request.QueryString["questionid"]);
            if (!Page.IsPostBack)
            {
                ddlTypes.Items.Add(QuestionTypes.SingleLineTextBox.ToString());
                ddlTypes.Items.Add(QuestionTypes.MultiLineTextBox.ToString());
                ddlTypes.Items.Add(QuestionTypes.SingleSelect.ToString());
                ddlTypes.Items.Add(QuestionTypes.MultiSelect.ToString());
                ddlTypes.Items.Add(QuestionTypes.YesOrNo.ToString());



                var query = from q in context.Questions
                            where (q.ID == questionid)
                            select q;

                question = query.First<Question>();


               
                ddlTypes.SelectedValue = question.QuestionType;
                txtTitle.Text = question.Text;
                txtValues.Text = question.Options;

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {


            var query = from q in context.Questions
                        where (q.ID == questionid)
                        select q;

            question = query.First<Question>();

            question.QuestionType = ddlTypes.SelectedValue;
            question.Text = txtTitle.Text;
            question.Options = txtValues.Text;
            

            context.SaveChanges();
            Response.Redirect("ListQuestions.aspx?id=" + id);

        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?id=" + id);
        }

        protected void btnDelete_Click(Object sender, EventArgs e)
        {
            var query = from q in context.Questions
                        where (q.ID == questionid)
                        select q;

            question = query.First<Question>();

            context.Questions.DeleteObject(question);
            try { 
                context.SaveChanges();
            Response.Redirect("ListQuestions.aspx?id=" + id);
        }
            catch
            {
                txtErrorMessage.Text = "Question is being used in a survey, action cannot be completed.";
            }

            
        }

        protected void BtnCancel(object sender, EventArgs e)
        {
            Response.Redirect("ListQuestions.aspx?id="+id);
        }
    }
}