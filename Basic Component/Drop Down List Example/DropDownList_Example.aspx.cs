using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DropDownList_Example : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnAdd_Click(object sender, EventArgs e)
    {   lblMessage.Text = "";
        ListItem item = new ListItem();
        item.Value = txtCountryCode.Text;
        item.Text = txtCountry.Text;
        Boolean add = true;
        foreach(ListItem temp in ddlCountry.Items)
        {
            if(temp.Value==txtCountryCode.Text && temp.Text == txtCountry.Text)
            {
                add = false;
            }
        }
        if (add) { 
        ddlCountry.Items.Add(item);
        lblMessage.Text = "Entery Sccessfully Add";
        lblMessage.CssClass = "text-success";
        }
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        lblMessage.Text = "";
      
        foreach (ListItem temp in ddlCountry.Items)
        {
            if(txtCountry.Text==temp.Text && temp.Value == txtCountryCode.Text)
            {
               
                ddlCountry.Items.Remove(temp);
                lblMessage.Text = "Entery Sccessfully Remove";
                lblMessage.CssClass = "text-danger";
                break;

            }
            else
            {
                lblMessage.Text = "Entery can not find ";
                lblMessage.CssClass = "text-danger";
            }
        }
    }

    protected void btnShow_Click(object sender, EventArgs e)
    {
        lblMessage.Text = "";
        foreach(ListItem temp in ddlCountry.Items)
        {
            if (temp.Selected)
            {
                lblMessage.Text += temp.Value + " - " + temp.Text + "<br />";
            }
            
        }
        lblMessage.CssClass = "text-info";
    }
}