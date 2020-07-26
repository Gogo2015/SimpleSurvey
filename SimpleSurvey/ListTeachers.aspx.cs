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
        protected void Page_Load(object sender, EventArgs e)
        {
            TeacherView.DataSource = GetData();

            TeacherView.DataBind();

        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
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

            foreach (User u in context.Users.OrderBy(user => user.LastName))
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

        protected void btn_AddUser(Object sender, EventArgs e)
        {
            Response.Redirect("AddTeacher.aspx");
        }
    }
}