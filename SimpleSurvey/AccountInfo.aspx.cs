using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class AccountInfo : System.Web.UI.Page
    {
        int id;
        SurveyAppConString context;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Int32.Parse(Request.QueryString["id"]);
            context = new SurveyAppConString();
            if (!IsPostBack) 
            { 
            classView.DataSource = GetData();
            //classView.Columns.Add(new )
            classView.DataBind();
            }

        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?id=" + id);
        }

        protected void click_LeaveClass(Object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            
            int classid = Int32.Parse(classView.DataKeys[gvr.RowIndex]["ClassID"].ToString());


            var surveyquery = from Survey s in context.Surveys
                              where (s.Class == classid)
                              select s;
            foreach(Survey s in surveyquery.ToList())
            {
                var responsequery = from Survey_Response sr in context.Survey_Response
                                    where (sr.FilledBy == id && sr.SurveyID == s.ID)
                                    select sr;
                foreach (Survey_Response sr in responsequery.ToList())
                {
                    context.Survey_Response.DeleteObject(sr);
                }
            }
            var classleave = from UserClass uc in context.UserClasses
                             where (uc.ClassID == classid && uc.UserID == id)
                             select uc;
            context.UserClasses.DeleteObject(classleave.First());
            
            context.SaveChanges();
            Response.Redirect("AccountInfo.aspx?id=" + id);
        }

        DataTable GetData()
        {
            SurveyAppConString context = new SurveyAppConString();
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("Class Name"));
            dt.Columns.Add(new DataColumn("Registration Code"));
            dt.Columns.Add(new DataColumn("UserID"));
            dt.Columns.Add(new DataColumn("ClassID"));

            var userclassquery = from UserClass uc in context.UserClasses
                             where (uc.UserID == id)
                             select uc;
            DataRow newRow;
            List<String> classNames = new List<String>();
            foreach (UserClass uc in userclassquery.ToList())
            {
                newRow = dt.NewRow();
                if (uc != null)
                {
                    var classquery = from Class c in context.Classes
                                     where (c.ID == uc.ClassID)
                                     select c;
                    Class found = classquery.First();
                    newRow[0] = found.ClassName;
                    newRow[1] = found.RegistrationCode;
                    newRow[2] = id;
                    newRow[3] = found.ID;
                    dt.Rows.Add(newRow);
                }
            }

            return dt;
        }

        protected void Take_Survey(object sender, EventArgs e)
        {
            Response.Redirect("SurveyForm.aspx?id=" + id);
        }
    }
}