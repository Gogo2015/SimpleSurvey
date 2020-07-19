using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class ManageQuestions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (!IsPostBack)
            {
                ddlTypes.Items.Add(QuestionTypes.SingleLineTextBox.ToString());
                ddlTypes.Items.Add(QuestionTypes.MultiLineTextBox.ToString());
                ddlTypes.Items.Add(QuestionTypes.SingleSelect.ToString());
                ddlTypes.Items.Add(QuestionTypes.MultiSelect.ToString());
                ddlTypes.Items.Add(QuestionTypes.YesOrNo.ToString());
                txtTitle.Text = "Please enter a question title";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SurveyAppConString context = new SurveyAppConString();
                Question quest = new Question();
                quest.Text = txtTitle.Text.Trim();
                quest.QuestionType = ddlTypes.SelectedItem.Text;
                quest.Options = txtValues.Text.Trim();
                context.AddToQuestions(quest);
                context.SaveChanges();
                Response.Redirect("ListQuestions.aspx");
            }
        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}