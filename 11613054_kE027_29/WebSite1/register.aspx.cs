using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class register : System.Web.UI.Page
{
    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        
        
    }   
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection com = new SqlConnection(cs);
            
         
            string insert = "insert into register(Username,Email,Password,country) values(@Username,@Email,@Password,@country)";
            SqlCommand cmd = new SqlCommand(insert,com);
            cmd.Parameters.AddWithValue("@Username",TextBox1.Text);
            cmd.Parameters.AddWithValue("@Email",TextBox2.Text);
            cmd.Parameters.AddWithValue("@Password",TextBox3.Text);
            cmd.Parameters.AddWithValue("@country",DropDownList1.SelectedItem.Value);
           
                com.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Account created successfully redirecting in 5 sec')</script>");
                    Response.AddHeader("referesh", "5;URL=developer.aspx");
                }
                else { Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('signupfailed')</script>"); }
         com.Close();

        
    }
}