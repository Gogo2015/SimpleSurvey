﻿using System;
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
        int classId;
        protected int id;
        SurveyAppConString context = new SurveyAppConString();
        List<User> users = new List<User>();
        protected void Page_Load(object sender, EventArgs e)
        {

            classId = Int32.Parse(Request.QueryString["class"]);
            id = Int32.Parse(Request.QueryString["id"]);
            var titleQuery = from Class cl in context.Classes
                             where (cl.ID == classId)
                             select cl;
            lbClass.Text = titleQuery.First().ClassName;
            UserView.DataSource = GetData();
            
            UserView.DataBind();
          
        }

        protected void btnReturn_Menu(Object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?id="+id);
        }

        DataTable GetData()
        {
            

            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("First Name"));
            dt.Columns.Add(new DataColumn("Last Name"));
            dt.Columns.Add(new DataColumn("User Name"));
            dt.Columns.Add(new DataColumn("ID"));
            dt.Columns.Add(new DataColumn("Teacher"));

            DataRow newRow;
            var userQuery = from UserClass uc in context.UserClasses
                            where (uc.ClassID == classId)
                            select uc;
            foreach (UserClass uc in userQuery.ToList())
            {
                var queryu = from User user in context.Users
                             where (user.ID == uc.UserID)
                             select user;
                foreach(User u in queryu.ToList())
                {
                    users.Add(u);
                }
            }
            foreach (User u in users.OrderBy(user => user.LastName))
            {
                if (u != null)
                {
                    newRow = dt.NewRow();
                    newRow[0] = u.FirstName;
                    newRow[1] = u.LastName;
                    newRow[2] = u.UserName;
                    newRow[3] = u.ID;
                    newRow[4] = id;
                    dt.Rows.Add(newRow);
                }
            }
            
            return dt;
        }

        protected void btn_AddUser(Object sender, EventArgs e)
        {
            Response.Redirect("ManageUsers.aspx?id="+id);
        }
    }
}