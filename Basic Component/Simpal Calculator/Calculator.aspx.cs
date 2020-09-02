using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnAdd_Click(object sender, EventArgs e)
    {   if (txtNuber1.Text!= "" && txtNumber2.Text!= "")
        {

            lblShowAnswer.Text = (Convert.ToDouble(txtNuber1.Text) + Convert.ToDouble(txtNumber2.Text)).ToString();
        }
        else
        {
            lblShowAnswer.Text = "Enter Proper Number ";
        }
    }


    protected void btnSubtraction_Click(object sender, EventArgs e)
    {
        if (txtNuber1.Text != "" && txtNumber2.Text != "")
        {

            lblShowAnswer.Text = (Convert.ToDouble(txtNuber1.Text) - Convert.ToDouble(txtNumber2.Text)).ToString();
        }
        else
        {
            lblShowAnswer.Text = "Enter Proper Number ";
        }

    }

    protected void btnMultiplay_Click(object sender, EventArgs e)
    {
        if (txtNuber1.Text != "" && txtNumber2.Text != "")
        {

            lblShowAnswer.Text = (Convert.ToDouble(txtNuber1.Text)*Convert.ToDouble(txtNumber2.Text)).ToString();
        }
        else
        {
            lblShowAnswer.Text = "Enter Proper Number ";
        }
    }

    protected void btnDivision_Click(object sender, EventArgs e)
    {
        if (txtNuber1.Text != "" && txtNumber2.Text != "" && Convert.ToDouble(txtNumber2.Text)!=0)
        {

            lblShowAnswer.Text = (Convert.ToDouble(txtNuber1.Text) / Convert.ToDouble(txtNumber2.Text)).ToString();
        }
        else
        {
            lblShowAnswer.Text = "Enter Proper Number ";
        }
    }
}