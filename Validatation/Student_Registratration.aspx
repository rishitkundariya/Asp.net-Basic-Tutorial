<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Registratration.aspx.cs" Inherits="Student_Registratration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>
        Student Registration
    </title>
        <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
        <script src="Bootstrap/js/bootstrap.min.js"></script>
     <script type="text/javascript">
            function Check(sender, args) {
                var em = document.getElementById('<%=cbTermsAndCondition.ClientID%>');
                if (em.checked) {
                    args.IsValid = true;
                }
                else {
                    args.IsValid = false;
                }


            }
        </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="pnlSignIn" runat="server" Visible="True">
             <div class="container">
	        <div class="row" style="padding:18px;">
		        <div class="col-md-12 text-center">

			        <h1 class="font-weight-bold"> Student Registration Form </h1>
		        </div>	
                
	        </div>
            <div class="row" style="margin:18px;">
                <div class="col-md-1"></div>
               <div class="col-md-2">
                   <span class="text-danger">*</span>
                 <strong> Enrollment No:-</strong> 
               </div>
               <div class="col-md-3">
                   <asp:TextBox ID="txtEnrollment" runat="server" CssClass="form-control"  EnableViewState="False" MaxLength="12"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="rfvEnrollmentNo" runat="server" ErrorMessage="Enter Proper Enrollment No" Display="Dynamic" SetFocusOnError="True" ControlToValidate="txtEnrollment" ForeColor="Red" ValidationGroup="SignIn"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="rev" runat="server" ErrorMessage="Enter Valid Enrollement Number" ValidationGroup="SignIn" Display="Dynamic" SetFocusOnError="True" ControlToValidate="txtEnrollment" ForeColor="Red" ValidationExpression="[0-9]{12}"></asp:RegularExpressionValidator>
                    
                </div>
               <div class="col-md-2">
                   <span class="text-danger">*</span>
                 <strong>Full Name:-</strong> 
               </div>
               <div class="col-md-3">
                   <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Enter Your Name" Display="Dynamic" SetFocusOnError="True" ControlToValidate="txtName" ForeColor="Red" ValidationGroup="SignIn"></asp:RequiredFieldValidator>
           
               </div>

           </div>
            <div class="row" style="margin:18px;">
                <div class="col-md-1"></div>
               <div class="col-md-2">
                   <span class="text-danger">*</span>
                 <strong> Institute Name:-</strong> 
               </div>
               <div class="col-md-3">
                  
                   
                       <asp:DropDownList ID="ddlInstitute" runat="server" CssClass="form-control">

                           <asp:ListItem Value="-1">Select Institute</asp:ListItem>
                           <asp:ListItem Value="DIET">Darshan Institute of Engineering &amp; Technology</asp:ListItem>
                           <asp:ListItem Value="DIETS">Darshan Institute of Engineering  &amp; Technology for Diploma Studies</asp:ListItem>
                           <asp:ListItem></asp:ListItem>

                       </asp:DropDownList>
                       <asp:RequiredFieldValidator ID="rfvInstitute" runat="server" ErrorMessage="Select Institute" Display="Dynamic" SetFocusOnError="True" ControlToValidate="ddlInstitute" ForeColor="Red" InitialValue="-1" ValidationGroup="SignIn"></asp:RequiredFieldValidator>
                  
                   </div>
               <div class="col-md-2">
                   <span class="text-danger">*</span>
                 <strong>Branch :-</strong> 
               </div>
               <div class="col-md-3">
                   
                       <asp:DropDownList ID="ddlBranch" runat="server" CssClass="form-control">

                           <asp:ListItem Value="-1">Select Branch</asp:ListItem>
                           <asp:ListItem Value="CE">Computer Engineering</asp:ListItem>
                           <asp:ListItem Value="CI">Civil Engineering</asp:ListItem>
                           <asp:ListItem Value="ME">Michanical Engineering</asp:ListItem>
                           <asp:ListItem Value="EE">Electrical Engineering</asp:ListItem>
                           <asp:ListItem></asp:ListItem>

                       </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvBranch" runat="server" ErrorMessage="Select Branch" Display="Dynamic" SetFocusOnError="True" ControlToValidate="ddlBranch" ForeColor="Red" InitialValue="-1" ValidationGroup="SignIn"></asp:RequiredFieldValidator>
           
               </div>

           
             </div>
            <div class="row" style="margin:18px;">
                <div class="col-md-1"></div>
               <div class="col-md-2">
                   
                 <strong> &nbsp; &nbsp;Email:-</strong> 
               </div>
               <div class="col-md-3">
                   <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"  TextMode="SingleLine"  ></asp:TextBox>
                   <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Enter Email in proper formate" ControlToValidate="txtEmail" ValidationGroup="SignIn" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    
                    
                </div>
               <div class="col-md-2">
                   <span class="text-danger">*</span>
                 <strong>Mobile Number :-</strong> 
               </div>
               <div class="col-md-3">
                   <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvfNumber" runat="server" ErrorMessage="Enter Mobile Number " Display="Dynamic" SetFocusOnError="True" ControlToValidate="txtNumber" ForeColor="Red" ValidationGroup="SignIn"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="revNumber" runat="server" ErrorMessage="Enter Proper Number" ControlToValidate="txtNumber" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{10}" ValidationGroup="SignIn"></asp:RegularExpressionValidator>
               </div>

           </div> 
            <div class="row" style="margin:18px;">
                <div class="col-md-1"></div>
                <div class="col-md-2">
                    <strong>&nbsp;&nbsp;City :- </strong>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <strong>&nbsp;&nbsp;BirthDate  :- </strong>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"  CssClass="form-control" ></asp:TextBox>
                </div>
                
            </div>
            <div class="row" style="margin:18px;">
                <div class="col-md-1"></div>
                <div class="col-md-2">
                    <strong>&nbsp;&nbsp;Current Semester :- </strong>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtSem" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                     <asp:RangeValidator ID="rvSem" runat="server" ErrorMessage="Enter Sem Between 1 to 8" Type="Integer" MinimumValue="1" MaximumValue="8" Display="Dynamic" ControlToValidate="txtSem" ForeColor="Red" SetFocusOnError="True" ValidationGroup="SignIn"></asp:RangeValidator> 
                </div>
                <div class="col-md-2">
                    <strong>&nbsp;&nbsp;CPI  :- </strong>
                </div>
                <div class="col-md-3">
                   
                    <asp:TextBox ID="txtCPI" runat="server" TextMode="Number"  CssClass="form-control" ></asp:TextBox>
                     <asp:RangeValidator ID="rvCPI" runat="server" ErrorMessage="Enter CPI between 0 to 10" Type="Double" MinimumValue="0" MaximumValue="10" Display="Dynamic" ControlToValidate="txtCPI" ForeColor="Red" SetFocusOnError="True" ValidationGroup="SignIn"></asp:RangeValidator> 
                </div>
                
            </div>
            <div class="row" style="margin:18px;">
                <div class="col-md-1"></div>
                <div class="col-md-2">
                    <strong>&nbsp;&nbsp; Address:-</strong>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="4"></asp:TextBox>
                </div>
            </div>  
            <div class="row" style="margin-top:18px;margin-left:18px;margin-right:18px;">
                <div class="col-md-1"></div>
                <div class="col-md-2">
                    <span class="text-danger">*&nbsp;</span><strong>Password:-</strong>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassWord" runat="server" ErrorMessage="Enter Your Password " Display="Dynamic" ControlToValidate="txtPassword" ForeColor="Red" SetFocusOnError="True" ValidationGroup="SignIn"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-2">
                     <span class="text-danger">*&nbsp;</span><strong>Retype Password:-</strong>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtRePassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvRetypePass" runat="server" ErrorMessage="Enter Password Again" ControlToValidate="txtRePassword"  Display="Dynamic"  SetFocusOnError="True" ForeColor="Red" ValidationGroup="SignIn"
                        ></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvReTypePassword" runat="server" ErrorMessage="Not Match" ControlToValidate="txtRePassword" ControlToCompare="txtPassword" SetFocusOnError="True" Operator="Equal" Display="Dynamic" ForeColor="Red" ValidationGroup="SignIn"></asp:CompareValidator>
                </div>
            </div>
            <div class="row" >
                <div class="col-md-1"></div>
                <div class="col-md-10" style="margin-left:40px;">
                    <asp:CheckBox ID="cbTermsAndCondition" runat="server" /> &nbsp; &nbsp;<strong>I have read all terms & condition also agree with that.</strong>
                    <asp:CustomValidator ID="cvTermsAndCondition" runat="server" ErrorMessage="Mark Terms & Condition" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ClientValidationFunction="Check" ValidationGroup="SignIn" ClientIDMode="AutoID"></asp:CustomValidator>
                </div>
            </div> 

            <div class="row" style="margin-top:10px;" >
                <div class="col-md-10 text-center" >
                    <asp:Button ID="btnSignIn" runat="server" Text="&nbsp;&nbsp; &nbsp;  Sign In &nbsp; &nbsp; &nbsp; " ValidationGroup="SignIn" CssClass="btn btn-primary" BorderStyle="Groove" OnClick="btnSignIn_Click" />
                </div>
                 <div class="col-md-2">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn  btn-primary" OnClick="btnLogin_Click" ValidationGroup="Login" />
                </div>
            </div> 
            
       </div >
        </asp:Panel>
        <asp:Panel ID="pnllogin" runat="server" Visible="False" >
            <div class="container">
	            <div class="row">
		            <div class="col-md-10 text-center">
			            <span style="font-size:4em;color:darkblue;"> Login </span>
		            </div>	
            	</div>
                <div class="row" style="margin-top:2rem;">
                    <div class="col-md-4 text-center">
                        <span class="text-danger"  style="font-size:2em;" >*</span>
                        <span style="font-size:2em;">Username :-</span>
                    </div>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="Please Enter Enrollment number" ControlToValidate="txtUserName" SetFocusOnError="True" Display="Dynamic" ForeColor="Red" ValidationGroup="Login"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revUserName" runat="server" ErrorMessage="Enter Enrollement in 12 Digit" ControlToValidate="txtUserName" Display="Dynamic" SetFocusOnError="True" ValidationExpression="[0-9]{12}" ValidationGroup="Login" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>

                </div>
                 <div class="row" style="margin-top:2rem;">
                    <div class="col-md-4 text-center">
                        <span class="text-danger"  style="font-size:2em;" >*</span>
                        <span style="font-size:2em;">Password :-</span>
                    </div>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtLoginPassword" runat="server" CssClass="form-control" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLoginpassword" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="txtLoginPassword" SetFocusOnError="True" Display="Dynamic" ForeColor="Red" ValidationGroup="Login" ></asp:RequiredFieldValidator>
                        
                    </div>
                     <div class="row" style="margin:70px;">
                         <div class="col-md-10 text-center">
                             <asp:Button ID="btnPalLogin" runat="server" Text="Login" ValidationGroup="Login" CssClass="btn btn-primary" />
                         </div>
                         <div class="col-md-1">
                             <asp:Button ID="btnLoginToSignIN" runat="server" Text="Sign In"  CssClass="btn btn-primary" OnClick="btnLoginToSignIN_Click" />
                         </div>
                         
                     </div>
                </div>
            </div >
        </asp:Panel>
       
    </form>
</body>
</html>
