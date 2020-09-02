<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calculator.aspx.cs" Inherits="Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>
        
 </head>
<body>
    <form id="form1" runat="server">
        <br />
        <br /> 
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <span>
                        Enter the First Number : 
                    </span>
                    <span>
                        <asp:TextBox ID="txtNuber1" runat="server" Text="0"></asp:TextBox>
                    </span>
                </div>
                 <div class="col-md-5">
                    <span>
                        Enter the Second Number : 
                    </span>
                    <span>
                        <asp:TextBox ID="txtNumber2" runat="server" Text="0" ></asp:TextBox>
                    </span>
                </div>
            </div>
              <br /><br />

             <div class="row">

                 <div class="col-md-2 ">
                      <asp:Button ID="btnAdd" runat="server" Text="+"  CssClass="btn btn-primary btn-default btn-block" OnClick="btnAdd_Click" />
                 </div>
                <div class="col-md-2" >
                    <asp:Button ID="btnSubtraction" runat="server" Text="-"  CssClass="btn btn-primary btn-default btn-block" OnClick="btnSubtraction_Click" />
                </div>  
                <div class="col-md-2">
                     <asp:Button ID="btnMultiplay" runat="server" Text="*"  CssClass="btn btn-primary btn-default btn-block" OnClick="btnMultiplay_Click" />
                </div>
                 <div class="col-md-2">
                     <asp:Button ID="btnDivision" runat="server" Text="/"  CssClass="btn btn-primary btn-default btn-block" OnClick="btnDivision_Click" />
                 </div>
                   <div class="col-md-4">
                       <asp:Label ID="lblShowAnswer" runat="server" Text=""></asp:Label>
                   </div>
                    
               
              
            </div>
        </div>
    </form>
</body>
</html>
