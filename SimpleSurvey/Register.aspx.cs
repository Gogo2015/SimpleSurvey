﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleSurvey
{
    public partial class Register : System.Web.UI.Page
    {
        SurveyAppConString context = new SurveyAppConString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            txtErrorClass.Text = "";
            txtErrorUser.Text = "";
            if (txtUsername.Text.Length >= 5)//A
            {
                if (txtPassword.Text.Length >= 5) //B
                {
                    var query = from u in context.Users
                                where (u.UserName == txtUsername.Text)
                                select u;
                    if (query.Count() == 0)
                    {
                        var classQuery = from cl in context.Classes
                                         where (cl.RegistrationCode == txtCode.Text)
                                         select cl;
                        if (classQuery.First() != null)
                        {
                            User user = new User();
                            UserClass uc = new UserClass();
                            uc.ClassID = classQuery.First().ID;
                            uc.UserID = user.ID;
                            user.FirstName = txtFirstName.Text;
                            user.LastName = txtLastName.Text;
                            user.UserName = txtUsername.Text;
                            user.Password = txtPassword.Text;
                            user.Role = 2;
                            context.AddToUsers(user);
                            context.SaveChanges();
                            Response.Redirect("LoginPage.aspx");
                        }
                        else
                        {
                            txtErrorClass.Text = "Class Not Found";
                        }
                    }
                    else
                    {
                        txtErrorUser.Text = "Username Already Taken";
                    }
                }
                else
                {
                    txtErrorPass.Text = "Password Too Short";
                }
                 }
            
            
            else
            {
                txtErrorUser.Text = "Username Too Short";
            }
        }

        protected void BtnCancel(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}