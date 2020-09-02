<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Percentage_Calculator.aspx.cs" Inherits="Percentage_Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>

    </title>
     <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
	        <div class="row">
                <br />
		        <div class="col-md-8">
                    Enter the mark of 1st  Subject : 

                    <asp:TextBox ID="txtSub1mark" runat="server"></asp:TextBox> / 100
                      <br /><br />
                    Enter the mark of 2nd Subject :

                    <asp:TextBox ID="txtSub2mark" runat="server"></asp:TextBox> / 100
                <br />  <br />
                     Enter the mark of 3rd Subject : 

                    <asp:TextBox ID="txtSub3mark" runat="server"></asp:TextBox> / 100
                <br />  <br />
                     Enter the mark of 4th Subject : 

                    <asp:TextBox ID="txtSub4mark" runat="server"></asp:TextBox> / 100
                <br />  <br />
                 Enter the mark of 5th Subject : 

                    <asp:TextBox ID="txtSub5mark" runat="server"></asp:TextBox> / 100
                <br />  <br />
		        </div>	
                <div class="col-md-4">
                    Percentage :
                    <asp:Label ID="lblShowPer" runat="server" Text=""></asp:Label>
                    <br /> <br />
                    Class :
                    <asp:Label ID="lblGrade" runat="server" Text=""></asp:Label>
                    <br /> <br />
                    <asp:Button ID="btn" runat="server" Text="Calculate" CssClass="btn btn-primary" OnClick="btn_Click" />
                       <br /> <br />
                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                </div>
	        </div>
        </div>

    </form>
</body>
</html>
