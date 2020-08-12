using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class SurveyForm : System.Web.UI.Page
    {
        SurveyAppConString context;
        int surveyid;
        int id;
        int classid;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Int32.Parse(Request.QueryString["id"]);
            context = new SurveyAppConString();
            if (!IsPostBack)
                LoadClasses();
            btnSubmit.Enabled = false;
            if (ddlSurveys.SelectedIndex >= 0)
            {
                surveyid = int.Parse(ddlSurveys.SelectedItem.Value);
                PopulateSurvey();
            }
        }
        private void LoadClasses()
        {
            var userClassQuery = from UserClass uc in context.UserClasses
                             where (uc.UserID == id)
                             select uc;
            ddlClasses.Items.Add(new ListItem());
            foreach (UserClass uc in userClassQuery.ToList())
            {
                var classquery = from Class c in context.Classes
                                 where (c.ID == uc.ClassID)
                                 select c;
                ListItem li = new ListItem();
                li.Text = classquery.First().ClassName;
                li.Value = classquery.First().ID.ToString();
                ddlClasses.Items.Add(li);
            }
            ddlClasses.DataBind();
        }

        protected void btnFind_Surveys(object sender, EventArgs e)
        {
            if (ddlClasses.SelectedIndex >= 0)
            {
                classid = int.Parse(ddlClasses.SelectedValue);
                LoadSurveys();
            }
        }
            
        private void LoadSurveys()
        {
            
            var surveyquery = from Survey s in context.Surveys
                               where (s.Class == classid)
                               select s;
            ddlSurveys.Items.Add(new ListItem());
            foreach (Survey s in surveyquery.ToList())
            {
                ListItem li = new ListItem();
                li.Text = s.Title;
                li.Value = s.ID.ToString();
                ddlSurveys.Items.Add(li);
            }
            ddlSurveys.DataBind();
        }
            
        protected void ddlSurveys_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void PopulateSurvey()
        {
            btnSubmit.Enabled = true;
            List<Question> questions = (from p in context.Questions
                                        join q in context.SurveyQuestions on p.ID equals q.QuestionID
                                        where q.SurveyID == surveyid
                                        select p).ToList();
            Table tbl = new Table();
            tbl.Width = Unit.Percentage(100);
            TableRow tr;
            TableCell tc;
            TextBox txt;
            //CheckBox cbk;
            DropDownList ddl;
            RadioButtonList rbl;

            foreach (Question q in questions)
            {
                tr = new TableRow();
                tc = new TableCell();
                //tc.Style["color"] = "#FFFFFF";
                tc.Width = Unit.Percentage(25);
                tc.Text = q.Text;
                tc.Attributes.Add("id", q.ID.ToString());
                tr.Cells.Add(tc);
                tc = new TableCell();

                if (q.QuestionType.ToLower() == "singlelinetextbox")
                {
                    txt = new TextBox();
                    txt.ID = "txt_" + q.ID;
                    txt.Width = Unit.Percentage(40);
                    tc.Controls.Add(txt);
                }

                if (q.QuestionType.ToLower() == "multilinetextbox")
                {
                    txt = new TextBox();
                    txt.ID = "txt_" + q.ID;
                    txt.TextMode = TextBoxMode.MultiLine;
                    txt.Width = Unit.Percentage(40);
                    tc.Controls.Add(txt);
                }

                if (q.QuestionType.ToLower() == "singleselect")
                {
                    ddl = new DropDownList();
                    ddl.ID = "ddl_" + q.ID;
                    ddl.Width = Unit.Percentage(41);
                    if (!string.IsNullOrEmpty(q.Options))
                    {
                        string[] values = q.Options.Split(',');
                        foreach (string v in values)
                            ddl.Items.Add(v.Trim());
                    }
                    tc.Controls.Add(ddl);
                }

                if (q.QuestionType.ToLower() == "yesorno")
                {
                    rbl = new RadioButtonList();
                    rbl.ID = "rbl_" + q.ID;
                    rbl.Width = Unit.Percentage(41);
                    //rbl.Style["color"] = "#FFFFFF";
                    if (!string.IsNullOrEmpty(q.Options))
                    {
                        string[] values = q.Options.Split(',');
                        foreach (string v in values)
                            rbl.Items.Add(v.Trim());
                    }
                    tc.Controls.Add(rbl);
                }
                tc.Width = Unit.Percentage(80);
                tr.Cells.Add(tc);
                tbl.Rows.Add(tr);
            }
            pnlSurvey.Controls.Add(tbl);
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            List<Survey_Response> response = GetSurveyReponse();
            foreach (Survey_Response sres in response)
                context.AddToSurvey_Response(sres);
            context.SaveChanges();
            Response.Redirect("AccountInfo.aspx?id=" + id);
        }

        protected void BtnCancel(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void btn_Click_AccountInfo(object sender, EventArgs e)
        {
            Response.Redirect("AccountInfo.aspx?id=" + id);
        }

        private List<Survey_Response> GetSurveyReponse()
        {
            List<Survey_Response> response = new List<Survey_Response>();
            foreach (Control ctr in pnlSurvey.Controls)
            {
                if (ctr is Table)
                {
                    Table tbl = ctr as Table;
                    foreach (TableRow tr in tbl.Rows)
                    {
                        Survey_Response sres = new Survey_Response();
                        sres.FilledBy = Int32.Parse(Request.QueryString["id"]);
                        sres.SurveyID = surveyid;
                        sres.QuestionID = Convert.ToInt32(tr.Cells[0].Attributes["ID"]);
                        TableCell tc = tr.Cells[1];
                        foreach (Control ctrc in tc.Controls)
                        {
                            if (ctrc is TextBox)
                            {
                                sres.Response = (ctrc as TextBox).Text.Trim();
                            }
                            else if (ctrc is DropDownList)
                            {
                                sres.Response = (ctrc as DropDownList).SelectedValue;
                            }
                            else if (ctrc is CheckBox)
                            {
                                sres.Response = (ctrc as CheckBox).Checked.ToString();
                            } else if (ctrc is RadioButtonList)
                            {
                                sres.Response = (ctrc as RadioButtonList).SelectedValue;
                            }
                        }
                        response.Add(sres);
                    }

                }
            }
            return response;
        }
    }
}