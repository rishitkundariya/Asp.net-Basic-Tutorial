using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Registratration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        pnlSignIn.Visible = false;
        pnllogin.Visible = true;
    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {

    }

    protected void btnLoginToSignIN_Click(object sender, EventArgs e)
    {
        pnllogin.Visible = false;
        pnlSignIn.Visible = true;
    }
}