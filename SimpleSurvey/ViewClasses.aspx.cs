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
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Int32.Parse(Request.QueryString["id"]);
            classView.DataSource = GetData();

            classView.DataBind();

        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?id="+id);
        }

        DataTable GetData()
        {
            SurveyAppConString context = new SurveyAppConString();
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("Class Name"));
            dt.Columns.Add(new DataColumn("Registration Code"));
            dt.Columns.Add(new DataColumn("ClassID"));
            dt.Columns.Add(new DataColumn("ID"));

            var classquery = from Class c in context.Classes
                            where (c.CreatedBy == id)
                            select c;
            DataRow newRow;
            List<String> classNames = new List<String>();
            foreach (Class c in classquery.ToList())
            {
                newRow = dt.NewRow();
                if (c != null)
                {
                    newRow[0] = c.ClassName;
                    newRow[1] = c.RegistrationCode;
                    newRow[2] = c.ID;
                    newRow[3] = id;
                    dt.Rows.Add(newRow);
                }
            }

            return dt;
        }

        protected void btn_AddClass_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateClass.aspx?id="+id);
        }
    }
}