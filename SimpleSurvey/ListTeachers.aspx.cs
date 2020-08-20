using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class ListTeachers : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Int32.Parse(Request.QueryString["id"]);
            TeacherView.DataSource = GetData();

            TeacherView.DataBind();

        }

        DataTable GetData()
        {
            SurveyAppConString context = new SurveyAppConString();

            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("First Name"));
            dt.Columns.Add(new DataColumn("Last Name"));
            dt.Columns.Add(new DataColumn("User Name"));
            dt.Columns.Add(new DataColumn("ID"));

            DataRow newRow;
            var teacherQuery = from User u in context.Users
                               where (u.Role == 1002)
                               select u;
            foreach (User u in teacherQuery.ToList().OrderBy(user => user.LastName))
            {
                if (u != null)
                {
                    newRow = dt.NewRow();
                    newRow[0] = u.FirstName;
                    newRow[1] = u.LastName;
                    newRow[2] = u.UserName;
                    newRow[3] = u.ID;
                    dt.Rows.Add(newRow);
                }
            }

            return dt;
        }

        protected void btn_AddTeacher(Object sender, EventArgs e)
        {
            Response.Redirect("AddTeacher.aspx?id=" + id);
        }

        protected void btn_Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logout.aspx");
        }
    }
}