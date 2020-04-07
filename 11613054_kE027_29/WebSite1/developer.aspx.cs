using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class developer : System.Web.UI.Page
{
    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["user"] != null)
        {
            Response.Write("HELLO" + Session["user"].ToString()+"Welcome to developer community");
        }
       //else { Response.Redirect("developer.aspx"); }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection com = new SqlConnection(cs);


        string insert = "Select * from register  where Username=@Username and Password=@password";
        SqlCommand cmd = new SqlCommand(insert, com);
        cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        com.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Session["user"] = TextBox1.Text;
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Loged in')</script>");
            Response.Redirect("login.aspx");
        }
        else { Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('user not registed')</script>"); }
        com.Close();
    }
}