using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class ListUsers : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            UserView.DataSource = GetData();
            
            UserView.DataBind();
          
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

            foreach (User u in context.Users)
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
            Response.Redirect("ManageUsers.aspx");
        }
    }
}