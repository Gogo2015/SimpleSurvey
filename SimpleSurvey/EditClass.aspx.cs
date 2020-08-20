using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class EditClass : System.Web.UI.Page
    {
        Class c;
        SurveyAppConString context = new SurveyAppConString();
        public int classid;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            // get the user id
            classid = Int32.Parse(Request.QueryString["classid"]);
            id = Int32.Parse(Request.QueryString["ID"]);

            if (!Page.IsPostBack)
            {
                var classQuery = from cl in context.Classes
                            where (cl.ID == classid)
                            select cl;

                c = classQuery.First<Class>();

                txtClassName.Text = c.ClassName;
                txtRegistrationCode.Text = c.RegistrationCode;
            }
        }

        protected void BtnSubmit(object sender, EventArgs e)
        {


            var queryF = from cl in context.Classes
                        where (cl.ID == classid)
                        select cl;

            c = queryF.First<Class>();

             c.ClassName = txtClassName.Text;
             c.RegistrationCode = txtRegistrationCode.Text;
            context.SaveChanges();
            Response.Redirect("ViewClasses.aspx?id=" + id);

        }

        protected void BtnCancel(Object sender, EventArgs e)
        {
            Response.Redirect("ViewClasses.aspx?id=" + id);
        }

        protected void BtnDelete(Object sender, EventArgs e)
        {
            var query = from cl in context.Classes
                        where (cl.ID == classid)
                        select cl;

            c = query.First<Class>();

            context.Classes.DeleteObject(c);
            context.SaveChanges();
            Response.Redirect("ViewClasses.aspx?id=" + id);
        }
    }
}