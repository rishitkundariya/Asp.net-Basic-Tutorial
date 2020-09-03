<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RadioButttonExample.aspx.cs" Inherits="RadioButttonExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Radio Button Example</title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

	        <div class="row">`
		        <div class="col-md-12">
                    Choose Your Colleage :- <br /><br />
                    <asp:RadioButton ID="rbinstitute" runat="server" GroupName="colleage" Text="Darshan Institute of Engineering & Technology" /> <br />
                    <asp:RadioButton ID="rbInstitutedp" runat="server" GroupName="colleage" Text="Darshan Institute of Engineering & Technology for Diploma studies" />
		         </div>	
	        </div>
            <div class="row">`
		        <div class="col-md-12">
                    Choose Your Branch :- <br /><br />
                    <asp:RadioButton ID="rbCE" runat="server" GroupName="branch" Text="Computer Enginnering" /> <br />
                    <asp:RadioButton ID="rbCI" runat="server" GroupName="branch" Text="Civil Enginnering" /><br />
                     <asp:RadioButton ID="rbME" runat="server" GroupName="branch" Text="Michanical Enginnering" /> <br />
                    <asp:RadioButton ID="rbEE" runat="server" GroupName="branch" Text="Electrical Enginnering" />
		         </div>	
	        </div>
           
	         <div class="row">
		            <div class="col-md-2">
                        <asp:Button ID="btnShow" runat="server" Text="Show" cssclass="btn btn-block btn-primary" OnClick="btnShow_Click"/>
			
		            </div>	
                 <div class="col-md-9">
                     <asp:Label ID="lblMessage" runat="server" EnableViewState="False"></asp:Label>
                 </div>
	          </div>

        </div>
    </form>
</body>
</html>
