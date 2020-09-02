using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Percentage_Calculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblError.Text = "";
        lblGrade.Text = "";
        lblShowPer.Text = "";
    }

    protected void btn_Click(object sender, EventArgs e)
    { int mark1 = Convert.ToInt32(txtSub1mark.Text);
        int mark2 = Convert.ToInt32(txtSub2mark.Text);
        int mark3 = Convert.ToInt32(txtSub3mark.Text);
        int mark4 = Convert.ToInt32(txtSub4mark.Text);
        int mark5 = Convert.ToInt32(txtSub5mark.Text);
        if (mark1 > 0 && mark1 <100 && mark2 > 0 && mark2 < 100 && mark3 > 0 &&mark3<100  && mark4 < 100 && mark5 > 0 && mark5 < 100 )
        {
            float persentage = (mark1 + mark2 + mark3 + mark4 + mark5) / 5;
            if(mark1 <35 && mark2<35 && mark3<35 && mark4<35 && mark5 < 35)
            {
                lblGrade.Text = "Fail";
            }
            else
            {
                lblShowPer.Text = persentage.ToString();
                if(persentage>=80 )
                {
                    lblGrade.Text = "Distinsion";
                }
                else if(persentage<80 && persentage >= 70)
                {
                    lblGrade.Text = "First Class";
                }
                else if (persentage < 70 && persentage >= 60)
                {
                    lblGrade.Text = "Second Class";
                }
                else if(persentage <60 && persentage >=35 && mark1 > 35 && mark2 > 35 && mark3 > 35 && mark4 > 35 && mark5 > 35)
                {
                    lblGrade.Text = "Pass Class";
                }
                else
                {
                    lblGrade.Text = "Fail";
                }
            }
        }
       else
        {
            lblError.Text = "Enter the proper Marks.";
        }
    }
}