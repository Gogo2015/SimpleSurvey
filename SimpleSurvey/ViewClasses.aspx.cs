using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class ViewClasses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            classView.DataSource = GetData();

            classView.DataBind();

        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        DataTable GetData()
        {
            SurveyAppConString context = new SurveyAppConString();
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("Class Name"));
            dt.Columns.Add(new DataColumn("Registration Code"));
            dt.Columns.Add(new DataColumn("ID"));


            DataRow newRow;
            List<String> classNames = new List<String>();
            foreach (Class c in context.Classes)
            {
                newRow = dt.NewRow();
                if (c != null)
                {
                    newRow[0] = c.ClassName;
                    newRow[1] = c.RegistrationCode;
                    newRow[2] = c.ID;
                    dt.Rows.Add(newRow);
                }
            }

            return dt;
        }
    }
}