using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckBox_Example : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDisplay_Click(object sender, EventArgs e)
    { int count = 0;
        String print = "";
        if (cbrajkot.Checked)
        {
            count++;
            print += cbrajkot.Text + "<br />";
        }
        if (cbmorbi.Checked)
        {
            count++;
            print += cbmorbi.Text + "<br />";
        }
        if (cbgondal.Checked)
        {
            count++;
            print += cbgondal.Text + "<br />";
        }
        if (cbjamnage.Checked)
        {
            count++;
            print += cbjamnage.Text + "<br />";
        }
        if (cbamreli.Checked)
        {
            count++;
            print += cbamreli.Text + "<br />";
        }
        if (cbpadhari.Checked)
        {
            count++;
            print += cbpadhari.Text + "<br />";
        }
        if (cbdhrol.Checked)
        {
            count++;
            print += cbdhrol.Text + "<br />";
        }
        if (count >= 2 && count <= 4)
        {
            lblMessage.Text = print;

        }
        else {
            lblMessage.Text = "Enter city at least 2 and most 4 from list.";
            lblMessage.CssClass = "text-danger bold";
        }

    }
}