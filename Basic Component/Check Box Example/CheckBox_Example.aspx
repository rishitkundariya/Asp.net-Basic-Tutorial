<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckBox_Example.aspx.cs" Inherits="CheckBox_Example" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Check Box Example</title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
	        <div class="row" style="padding-top:10px;">
		        <div class="col-md-3">
                    Choose Your City :- <br /> <br />
			         <asp:CheckBox ID="cbrajkot" runat="server" Text="Rajkot" /><br />
                    <asp:CheckBox ID="cbmorbi" runat="server" Text="Morbi" /><br />
                    <asp:CheckBox ID="cbamreli" runat="server" Text="Amreli" /><br />
                    <asp:CheckBox ID="cbjamnage" runat="server" Text="Jamnagar" /><br />
                    <asp:CheckBox ID="cbgondal" runat="server" Text="Gondal" /><br />
                    <asp:CheckBox ID="cbdhrol" runat="server" Text="Dhrol" /><br />
                    <asp:CheckBox ID="cbpadhari" runat="server" Text="Padhari" />
		         </div>	
                <div class="col-md-2">
                    <asp:Button ID="btnDisplay" runat="server" Text="Display" CssClass="form-control btn btn-primary" OnClick="btnDisplay_Click" />

                </div>
                <div class="col-md-6">
                    <asp:Label ID="lblMessage" runat="server" EnableViewState="False"></asp:Label>
                </div>
	        </div>
       </div>
    </form>
</body>
</html>
