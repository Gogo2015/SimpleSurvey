using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.DynamicData;

namespace SimpleSurvey
{
    public partial class MenuUserClasses : System.Web.UI.Page
    {
        SurveyAppConString context = new SurveyAppConString();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                id = Int32.Parse(Request.QueryString["id"]);
                GetClasses();
            }
        }

        protected void GetClasses()
        {
            var classQuery = from Class c in context.Classes
                             where (c.CreatedBy == id)
                             select c;
            foreach (Class c in classQuery.ToList())
            {
                ListItem li = new ListItem();
                li.Text = c.ClassName;
                li.Value = c.ID.ToString();
                ddlClasses.Items.Add(li);
            }
            ddlClasses.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ddlClasses.SelectedValue != null)
            {
                Response.Redirect("ListUsers.aspx?id=" + id + "&class=" + ddlClasses.SelectedItem.Value);
            }
        }
    }
}