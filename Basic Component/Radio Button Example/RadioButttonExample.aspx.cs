using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RadioButttonExample : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnShow_Click(object sender, EventArgs e)
    {
        if (rbinstitute.Checked)
        {
            lblMessage.Text += rbinstitute.Text + " - ";
        }
        if (rbInstitutedp.Checked)
        {
            lblMessage.Text += rbInstitutedp.Text + " - ";
        }
        if (rbCE.Checked)
        {
            lblMessage.Text += rbCE.Text ;
        }
        if (rbCI.Checked)
        {
            lblMessage.Text += rbCI.Text ;
        }
        if (rbME.Checked)
        {
            lblMessage.Text += rbME.Text ;
        }
        if (rbEE.Checked)
        {
            lblMessage.Text += rbEE.Text ;
        }
    }
}