using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RadioButtton_List_Example : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        ListItem temp = new ListItem();
        temp.Value = txtCountryCode.Text;
        temp.Text = txtCountry.Text;
        Boolean add = true;
        foreach (ListItem item in rblLeft.Items)
        {
            if (item.Value == txtCountryCode.Text && item.Text == txtCountry.Text)
            {
                add = false;
            }
        }
        if (add)
        {
            rblLeft.Items.Add(temp);
        }
        
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        ListItem temp = new ListItem();
        temp.Value = txtCountryCode.Text;
        temp.Text = txtCountry.Text;
        foreach (ListItem lstemp in rblLeft.Items)
        {
            if (lstemp.Text == temp.Text && lstemp.Value == temp.Value)
            {
                rblLeft.Items.Remove(lstemp);
                break;
            }
        }
    }

    protected void btnAllRight_Click(object sender, EventArgs e)
    {
        foreach (ListItem temp in rblLeft.Items)
        {
            rblRight.Items.Add(temp);
        }

        rblLeft.Items.Clear();
    }

    protected void btnOneLR_Click(object sender, EventArgs e)
    {
        int i = 0;
        int[] copy = new int[rblLeft.Items.Count + 1];

        foreach (ListItem temp in rblLeft.Items)
        {
            copy[i] = 0;

            if (temp.Selected == true)
            {
                copy[i] = 1;
                rblRight.Items.Add(temp);
                rblRight.ClearSelection();
            }
            i++;
        }

        for (i = rblLeft.Items.Count; i >= 0; i--)
        {
            if (copy[i] == 1)
            {
                rblLeft.Items.RemoveAt(i);
            }
        }
    }

    protected void btnOneRL_Click(object sender, EventArgs e)
    {
        int i = 0;
        int[] copy = new int[rblRight.Items.Count + 1];

        foreach (ListItem temp in rblRight.Items)
        {
            copy[i] = 0;

            if (temp.Selected == true)
            {
                copy[i] = 1;
                rblLeft.Items.Add(temp);
                rblLeft.ClearSelection();
            }
            i++;
        }

        for (i = rblRight.Items.Count; i >= 0; i--)
        {
            if (copy[i] == 1)
            {
                rblRight.Items.RemoveAt(i);
            }
        }
    }

    protected void btnAllLeft_Click(object sender, EventArgs e)
    {
        foreach (ListItem temp in rblRight.Items)
        {
            rblLeft.Items.Add(temp);
        }

        rblRight.Items.Clear();
    }
}