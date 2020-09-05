using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckBoxList_Example : System.Web.UI.Page
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
        foreach (ListItem item in cblLeft.Items)
        {
            if (temp.Value == txtCountryCode.Text && temp.Text == txtCountry.Text)
            {
                add = false;
            }
        }
        if (add)
        {
            cblLeft.Items.Add(temp);
        }
        
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        ListItem temp = new ListItem();
        temp.Value = txtCountryCode.Text;
        temp.Text = txtCountry.Text;
        foreach (ListItem lstemp in cblLeft.Items)
        {
            if (lstemp.Text == temp.Text && lstemp.Value == temp.Value)
            {
                cblLeft.Items.Remove(lstemp);
                break;
            }
        }
    }

    protected void btnOneLR_Click(object sender, EventArgs e)
    {
        int i = 0;
        int[] copy = new int[cblLeft.Items.Count + 1];

        foreach (ListItem temp in cblLeft.Items)
        {
            copy[i] = 0;

            if (temp.Selected == true)
            {
                copy[i] = 1;
                cblRight.Items.Add(temp);
                cblRight.ClearSelection();
            }
            i++;
        }

        for (i = cblLeft.Items.Count; i >= 0; i--)
        {
            if (copy[i] == 1)
            {
                cblLeft.Items.RemoveAt(i);
            }
        }
    }

    protected void btnOneRL_Click(object sender, EventArgs e)
    {
        int i = 0;
        int[] copy = new int[cblRight.Items.Count + 1];

        foreach (ListItem temp in cblRight.Items)
        {
            copy[i] = 0;

            if (temp.Selected == true)
            {
                copy[i] = 1;
                cblLeft.Items.Add(temp);
                cblLeft.ClearSelection();
            }
            i++;
        }

        for (i = cblRight.Items.Count; i >= 0; i--)
        {
            if (copy[i] == 1)
            {
                cblRight.Items.RemoveAt(i);
            }
        }
    }

    protected void btnAllLeft_Click(object sender, EventArgs e)
    {
        foreach (ListItem temp in cblRight.Items)
        {
            cblLeft.Items.Add(temp);
        }

        cblRight.Items.Clear();
    }

    protected void btnAllRight_Click(object sender, EventArgs e)
    {
        foreach (ListItem temp in cblLeft.Items)
        {
            cblRight.Items.Add(temp);
        }

        cblLeft.Items.Clear();
    }
}