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
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Int32.Parse(Request.QueryString["id"]);
            classView.DataSource = GetData();

            classView.DataBind();

        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?id=" + id);
        }

        DataTable GetData()
        {
            SurveyAppConString context = new SurveyAppConString();
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("Class Name"));
            dt.Columns.Add(new DataColumn("Registration Code"));
            dt.Columns.Add(new DataColumn("ID"));

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
                    newRow[2] = found.ID;
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