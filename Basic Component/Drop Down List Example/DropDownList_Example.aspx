<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropDownList_Example.aspx.cs" Inherits="DropDownList_Example" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DropDown List</title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
	         <div class="row" style="padding-top:20px;">
	    	    <div class="col-md-5" style="padding:0px;">
                    Enter the Code of Country:-
                    <asp:TextBox ID="txtCountryCode" runat="server" CssClass="" TextMode="Number" ></asp:TextBox>
			
			
		        </div>	
                 <div class="col-md-5"style="padding:0px;">
                     Enter the Country Name:-
                        <asp:TextBox ID="txtCountry" runat="server" CssClass="" ></asp:TextBox>
		        </div>
                 <div class="col-md-1"style="padding:0px;">
                     <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="form-control btn-block btn btn-primary" OnClick="btnAdd_Click" />
                 </div>
                 <div class="col-md-1" style="padding:1px;">
                     <asp:Button ID="btnRemove" runat="server" Text="Remove" CssClass="form-control btn-block btn btn-danger" OnClick="btnRemove_Click" />
                 </div>
             </div>
            <div class="row" style="padding-top:20px;">
                <div class="col-md-5">
                    <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnShow" runat="server" Text="Display"  CssClass="form-control btn btn-primary btn-block" OnClick="btnShow_Click"/>
                </div>
                <div class="col-md-5">
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </div>
            </div>
            
            
        </div >
    </form>
</body>
</html>
