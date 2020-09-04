using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListBox_Example : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        ListItem temp = new ListItem();
        temp.Value = txtCountryCode.Text;
        temp.Text = txtCountry.Text;
        lbLeft.Items.Add(temp);
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        ListItem temp = new ListItem();
        temp.Value = txtCountryCode.Text;
        temp.Text = txtCountry.Text;
        foreach(ListItem lstemp in lbLeft.Items)
        {
            if(lstemp.Text==temp.Text && lstemp.Value == temp.Value)
            {
                lbLeft.Items.Remove(lstemp);
                break;
            }
        }
    }

    protected void btnAllRight_Click(object sender, EventArgs e)
    {
        foreach (ListItem temp in lbLeft.Items)
        {
            lbRight.Items.Add(temp);
        }

        lbLeft.Items.Clear();
    }

    protected void btnOneRL_Click(object sender, EventArgs e)
    {
        int i = 0;
        int[] copy = new int[lbRight.Items.Count + 1];

        foreach (ListItem temp in lbRight.Items)
        {
            copy[i] = 0;

            if (temp.Selected == true)
            {
                copy[i] = 1;
                lbLeft.Items.Add(temp);
            }
            i++;
        }

        for (i = lbRight.Items.Count; i >= 0; i--)
        {
            if (copy[i] == 1)
            {
                lbRight.Items.RemoveAt(i);
            }
        }
    }

    protected void btnOneLR_Click(object sender, EventArgs e)
    {
        int i = 0;
        int[] copy = new int[lbLeft.Items.Count+1];

        foreach (ListItem temp in lbLeft.Items)
        {
            copy[i] = 0;

            if (temp.Selected==true)
            {
                copy[i] = 1;
                lbRight.Items.Add(temp);
            }
            i++;
        }

        for (i = lbLeft.Items.Count; i>=0; i--)
        {
            if (copy[i] == 1)
            {
                lbLeft.Items.RemoveAt(i);
            }
        }
    }

    protected void btnAllLeft_Click(object sender, EventArgs e)
    {

        foreach (ListItem temp in lbRight.Items)
        {
            lbLeft.Items.Add(temp);
        }

        lbRight.Items.Clear();
    }
}