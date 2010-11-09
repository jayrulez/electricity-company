using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Session["login"] != null)
        {
            this.Session["login"] = null;
        }

        if (this.IsPostBack)
        {
            if (this.login(txtUsername.Text, txtPassword.Text)==true)
            {
                this.Response.Redirect("./Default.aspx");
            }
        }
    }

    protected bool login(string username, string password)
    { 
        if(username == "admin" && password == "admin")
        {
            this.Session["login"] = true;
            return true;
        }

        lblStatus.Text = "<div class=\"error\">Username or password is correct</div>.";

        return false;
    }
}