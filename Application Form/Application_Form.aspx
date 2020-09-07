<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Application_Form.aspx.cs" Inherits="Application_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Application Form
    </title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <style>
        .margin_25{
            margin:10px;
        }
        .pading_5{
            padding:5px;
        }
        .margin_R_5{
            margin-left:5px;
        }
        .valign{
            vertical-align:middle;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="container">
	     <div class="row" style="margin:20px;">
		    <div class="col-md-12 text-center">
                <h1> Application Form </h1>
			
		    </div>	

	     </div>
         <div class="row" style="margin:25px;">
             <div class="col-md-2">
                <span  style="background-color:darkslateblue;color:white;padding:5px;">
                         
                         <strong>Post Details</strong>
                    
                </span>
             </div>
         </div>
          <div class="row margin_25">
              <div class="col-md-1"></div>
             <div class="col-md-1 pading_5 ">
               <strong style="margin-top:5px;"> Institute </strong> 

             </div>
              <div class="col-md-1 pading_5">
                  <asp:RadioButton ID="rbDegree" runat="server" Checked="True" Text="" GroupName="Institute"   TextAlign="Right" />
                  <span class="margin_R_5" >Degree</span>
              </div>
              <div class="col-md-1 pading_5">
                  <asp:RadioButton ID="rbDiploma" runat="server"  GroupName="Institute" />
                  <span class="margin_R_5">Diploma</span>
              </div>
              <div class="col-md-1 pading_5">
                  <asp:RadioButton ID="rbBoth" runat="server"  GroupName="Institute" />
                    <span class="margin_R_5">Both</span>
              </div>

         </div>
         <div class="row margin_25">
             <div class="col-md-1"></div>
             <div class="col-md-1 pading_5">
                 <strong >Department</strong>
             </div>
             <div class="col-md-4 pading_5">
                 <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-control"  >
                     <asp:ListItem Value="-1">--Select Department--</asp:ListItem>
                     <asp:ListItem Value="CE">Computer Engineering</asp:ListItem>
                     <asp:ListItem Value="CI">Civil Engineering</asp:ListItem>
                     <asp:ListItem Value="ME">Michanical Engineering</asp:ListItem>
                     <asp:ListItem Value="EE">Electrical Engineering</asp:ListItem>
                     <asp:ListItem Value="EC">Electronics and Communication Engineering</asp:ListItem>
                     <asp:ListItem Value="HSE">Humanities and Science Engineering</asp:ListItem>
                     
                 </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="rfvDepartment" runat="server" ErrorMessage="Please Select Department" ControlToValidate="ddlDepartment" Display="Dynamic" ForeColor="Red" InitialValue="-1" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
             </div>
         </div>
         <div class="row margin_25">
             <div class="col-md-1"></div>
             <div class="col-md-1 pading_5">
                 <strong >Post</strong>
             </div>
             <div class="col-md-4 pading_5">
                 <asp:DropDownList ID="ddlPost" runat="server" CssClass="form-control" intialvalur="-1" >
                     <asp:ListItem Value="-1">--Select Post--</asp:ListItem>
                     <asp:ListItem Value="pro">Professor</asp:ListItem>
                     <asp:ListItem Value="Aspro">Assistant  Professor</asp:ListItem>
                     <asp:ListItem Value="Acpro">Associative Professor</asp:ListItem>
                     <asp:ListItem Value="HOD">HOD </asp:ListItem>
                     <asp:ListItem Value="lec">Lecturer</asp:ListItem>
                     <asp:ListItem Value="labAssistant">Lab Assistant </asp:ListItem>
                     
                 </asp:DropDownList>
                 <asp:RequiredFieldValidator ID="rfvPost" runat="server" ErrorMessage="Please Select Post" ControlToValidate="ddlPost" Display="Dynamic" ForeColor="Red" InitialValue="-1" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
             </div>
         </div>
         <hr style="border:0.1px solid ;" />
          <div class="row" style="margin:25px;">
             <div class="col-md-2">
                <span  style="background-color:darkslateblue;color:white;padding:5px;">
                         
                         <strong>Personal Details </strong>
                    
                </span>
             </div>
         </div>
         <div class="row margin_25">
              <div class="col-md-1"></div>
             <div class="col-md-1 pading_5">
                 <strong> Name</strong>
             </div>
              <div class="col-md-10 pading_5">
                  <asp:TextBox ID="txtName" runat="server" CssClass="form-control"  placeholder="Enter Your Full Name (As Per LC)"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfv" runat="server" ErrorMessage="Please Enter Your Name" SetFocusOnError="True" ControlToValidate="txtName" ForeColor="Red" ValidationGroup="Apply"></asp:RequiredFieldValidator>
              </div>
         </div>
          <div class="row margin_25">
              <div class="col-md-1"></div>
             <div class="col-md-1 pading_5">
                 <strong> Gender </strong>
             </div>
              <div class="col-md-4 pading_5">
                   <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control" intialvalur="-1" >
                     <asp:ListItem Value="-1">--Select Gender--</asp:ListItem>
                     <asp:ListItem Value="male">Male</asp:ListItem>
                     <asp:ListItem Value="female">Female  Professor</asp:ListItem>
                     </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="rfvGender" runat="server" ErrorMessage="Select Your Gender" SetFocusOnError="True" ControlToValidate="ddlGender" ForeColor="Red" ValidationGroup="Apply" InitialValue="-1"></asp:RequiredFieldValidator>
              </div>
               <div class="col-md-1"></div>
               <div class="col-md-1 pading_5">
                 <strong> BirthDate </strong>
             </div>
               <div class="col-md-4 pading_5">
                   <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvfDOB" runat="server" ErrorMessage="Select Your Date of Birth" SetFocusOnError="True" ControlToValidate="txtDOB" ForeColor="Red" ValidationGroup="Apply" ></asp:RequiredFieldValidator>
               </div>
         </div>
         <div class="row margin_25">
              <div class="col-md-1"></div>
             <div class="col-md-1 pading_5">
                 <strong> Mobile </strong>
             </div>
              <div class="col-md-4 pading_5">
                  <asp:TextBox ID="txtMobileNumber" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Mobile No " SetFocusOnError="True" ControlToValidate="txtMobileNumber" ForeColor="Red" ValidationGroup="Apply" ></asp:RequiredFieldValidator>

              </div>
               
              <div class="col-md-2 pading_5 text-center ">
                 <strong style="margin-left:1rem"> Alternamte Mobile </strong>
             </div>
              <div class="col-md-4 pading_5">
                  <asp:TextBox ID="txtAlterMobileNo" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
               

              </div>
         </div>
          <div class="row margin_25">
              <div class="col-md-1"></div>
             <div class="col-md-1 pading_5">
                 <strong> Email: </strong>
             </div>
              <div class="col-md-4 pading_5">
                  <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Enter Your Email " SetFocusOnError="True" ControlToValidate="txtEmail" ForeColor="Red" ValidationGroup="Apply" ></asp:RequiredFieldValidator>

              </div>
               
              <div class="col-md-2 pading_5 text-center ">
                 <strong style="margin-left:2rem"> Website / Blog </strong>
             </div>
              <div class="col-md-4 pading_5">
                  <asp:TextBox ID="txtWebSite" runat="server" CssClass="form-control" ></asp:TextBox>
               

              </div>
         </div>
             <div class="row margin_25">
                  <div class="col-md-1"></div>
                 <div class="col-md-1 pading_5">
                     <strong> Address: </strong>
                 </div>
                  <div class="col-md-10 pading_5">
                      <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Enter Your Address " SetFocusOnError="True" ControlToValidate="txtAddress" ForeColor="Red" ValidationGroup="Apply" ></asp:RequiredFieldValidator>

                  </div>
             </div>
             <div class="row margin_25">
              <div class="col-md-1"></div>
             <div class="col-md-1 pading_5">
                 <strong> City: </strong>
             </div>
              <div class="col-md-4 pading_5">
                  <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="Enter Your City " SetFocusOnError="True" ControlToValidate="txtCity" ForeColor="Red" ValidationGroup="Apply" ></asp:RequiredFieldValidator>

              </div>
               
              <div class="col-md-2 pading_5 text-center ">
                 <strong style="margin-left:6rem"> Pincode  </strong>
             </div>
              <div class="col-md-4 pading_5">
                  <asp:TextBox ID="txtPincode" runat="server" CssClass="form-control" TextMode="Number" MaxLength="6"></asp:TextBox>
                </div>
         </div>   
             <div class="row margin_25">
                  <div class="col-md-1"></div>
                 <div class="col-md-1 pading_5">
                     <strong> Hobbies: </strong>
                 </div>
                  <div class="col-md-10 pading_5">
                      <asp:TextBox ID="txtHobbies" runat="server" CssClass="form-control" TextMode="SingleLine" placeholder="Enter Your hobbies"></asp:TextBox>
                      
                  </div>
             </div>
         <hr style="border:0.1px solid ;" />
             <div class="row" style="margin:25px;">
             <div class="col-md-3">
                <span  style="background-color:darkslateblue;color:white;padding:5px;">
                         
                         <strong>Educational Qualification </strong>
                    
                </span>
             </div>
         </div>
         <div class="row margin_25">
             <div class="col-md-1"></div>
             <div class="col-md-11 pading_5">
                 <div class="table-responsive">
                                            <table class="table table-bordered ">
                                                <thead>
                                                    <tr >
                                                        <th class=" text-center valign">#</th>
                                                        <th class="valign" style="width:11rem;">Degree Level</th>
                                                        <th class="align-middle" style="width:17rem;">Degree</th>
                                                        <th class="align-middle" style="width:19rem;">Specialization</th>
                                                        <th class="align-middle" style="width:21rem;">College / University</th>
                                                        <th class="align-middle">Year of<br />Passing</th>
                                                        <th class="align-middle" style="width:10rem;">Percentage</th>
                                                        <th class="align-middle" style="width:15rem;">Class</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <tr class="valign">
                                                        <td> <span class="valign" >1</span></td>
                                                         <td><span class="valign" >Doctorate</span> </td>
                                                        <td><asp:TextBox ID="txtPHD" runat="server" Text="Ph.D" CssClass="form-control" ReadOnly="True"></asp:TextBox> </td>
                                                          <td><asp:TextBox ID="txtDrSpealization" runat="server"  CssClass="form-control" ReadOnly="False"></asp:TextBox> </td>
                                                        <td><asp:TextBox ID="txtDrCollege" runat="server"  CssClass="form-control" ReadOnly="False"></asp:TextBox> </td>
                                                          <td><asp:TextBox ID="txtDrYearofPass" runat="server"  CssClass="form-control"  TextMode="Number"></asp:TextBox> </td>
                                                        <td><asp:TextBox ID="txtDrPercentage" runat="server"  CssClass="form-control"  TextMode="Number"></asp:TextBox> </td>
                                                        <td><asp:DropDownList ID="ddlDrClass" runat="server" CssClass="form-control">
                                                            <asp:ListItem  runat="server" Value="-1" Text="Select Class" />
                                                            <asp:ListItem  runat="server" Value="Distinction" Text="Distinction" />
                                                            <asp:ListItem  runat="server" Value="FC" Text="First Class" />
                                                            <asp:ListItem  runat="server" Value="SC" Text="Second Class" />
                                                            <asp:ListItem  runat="server" Value="PC" Text="Pass Class" />
                                                            </asp:DropDownList></td>
                                                    </tr>
                                                     <tr class="valign">
                                                        <td> <span class="valign" >2</span></td>
                                                         <td><span class="valign" >PG</span> </td>
                                                        <td><asp:DropDownList ID="ddlPGDegree" runat="server" CssClass="form-control">
                                                            <asp:ListItem  runat="server" Value="-1" Text="Select Degree" />
                                                            <asp:ListItem  runat="server" Value="M.E/M.tech" Text="M.tech / M.E" />
                                                            <asp:ListItem  runat="server" Value="MBA" Text="M.B.A" />
                                                            <asp:ListItem  runat="server" Value="MSC" Text="M.S.C" />
                                                            <asp:ListItem  runat="server" Value="MPhil" Text="M.Phil" />
                                                            </asp:DropDownList></td>
                                                          <td><asp:TextBox ID="txtPGSpec" runat="server"  CssClass="form-control" ReadOnly="False"></asp:TextBox> </td>
                                                        <td><asp:TextBox ID="txtPGColleage" runat="server"  CssClass="form-control" ReadOnly="False"></asp:TextBox> </td>
                                                          <td><asp:TextBox ID="txtPGYearofpassing" runat="server"  CssClass="form-control"  TextMode="Number"></asp:TextBox> </td>
                                                        <td><asp:TextBox ID="txtPGPersentage" runat="server"  CssClass="form-control"  TextMode="Number"></asp:TextBox> </td>
                                                        <td><asp:DropDownList ID="ddlPGClass" runat="server" CssClass="form-control">
                                                            <asp:ListItem  runat="server" Value="-1" Text="Select Class" />
                                                            <asp:ListItem  runat="server" Value="Distinction" Text="Distinction" />
                                                            <asp:ListItem  runat="server" Value="FC" Text="First Class" />
                                                            <asp:ListItem  runat="server" Value="SC" Text="Second Class" />
                                                            <asp:ListItem  runat="server" Value="PC" Text="Pass Class" />
                                                            </asp:DropDownList></td>
                                                    </tr>
                                                    <tr class="valign">
                                                        <td> <span class="valign" >3</span></td>
                                                         <td><span class="valign" >UG</span> </td>
                                                        <td><asp:DropDownList ID="ddlUGDegree" runat="server" CssClass="form-control">
                                                            <asp:ListItem  runat="server" Value="-1" Text="Select Degree" />
                                                            <asp:ListItem  runat="server" Value="B.E/B.tech" Text="B.tech / B.E" />
                                                            <asp:ListItem  runat="server" Value="B.A" Text="B.A" />
                                                            <asp:ListItem  runat="server" Value="BSC" Text="B.S.C" /> </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="rfvddlPGDegree" runat="server" ErrorMessage="Select Degree " ForeColor="Red" ControlToValidate="ddlUGDegree"  SetFocusOnError="True" ValidationGroup="Apply" Display="Dynamic" InitialValue="-1"></asp:RequiredFieldValidator>
                                                        </td>
                                                          <td><asp:TextBox ID="txtUGSpecia" runat="server"  CssClass="form-control" ReadOnly="False"></asp:TextBox>
                                                              <asp:RequiredFieldValidator ID="rfvUGSpe" runat="server" ErrorMessage="Enter Specilization" ForeColor="Red" ControlToValidate="txtUGSpecia"  SetFocusOnError="True" ValidationGroup="Apply" Display="Dynamic"></asp:RequiredFieldValidator>
                                                          </td>
                                                        <td><asp:TextBox ID="txtUGSCollege" runat="server"  CssClass="form-control" ReadOnly="False"></asp:TextBox> 
                                                            <asp:RequiredFieldValidator ID="rfvUGCollege" runat="server" ErrorMessage="Enter Colleage " ForeColor="Red" ControlToValidate="txtUGSCollege"  SetFocusOnError="True" ValidationGroup="Apply" Display="Dynamic"></asp:RequiredFieldValidator>
                                                        </td>
                                                          <td><asp:TextBox ID="txtUGSYearOfPassing" runat="server"  CssClass="form-control"  TextMode="Number"></asp:TextBox>
                                                              <asp:RequiredFieldValidator ID="rfvUGYearOfPassing" runat="server" ErrorMessage="Select Degree " ForeColor="Red" ControlToValidate="txtUGSYearOfPassing"  SetFocusOnError="True" ValidationGroup="Apply" Display="Dynamic"></asp:RequiredFieldValidator>
                                                          </td>
                                                        <td><asp:TextBox ID="txtUGSPersentage" runat="server"  CssClass="form-control"  TextMode="Number"></asp:TextBox> 
                                                            <asp:RequiredFieldValidator ID="rfvUGPersentage" runat="server" ErrorMessage="Select Degree " ForeColor="Red" ControlToValidate="txtUGSPersentage" SetFocusOnError="True" ValidationGroup="Apply" Display="Dynamic"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td><asp:DropDownList ID="ddlUGClass" runat="server" CssClass="form-control">
                                                            <asp:ListItem  runat="server" Value="-1" Text="Select Class" />
                                                            <asp:ListItem  runat="server" Value="Distinction" Text="Distinction" />
                                                            <asp:ListItem  runat="server" Value="FC" Text="First Class" />
                                                            <asp:ListItem  runat="server" Value="SC" Text="Second Class" />
                                                            <asp:ListItem  runat="server" Value="PC" Text="Pass Class" />
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="rfvUGClass" runat="server" ErrorMessage="Select Class " ForeColor="Red" ControlToValidate="ddlUGClass"  SetFocusOnError="True" ValidationGroup="Apply" Display="Dynamic" InitialValue="-1"></asp:RequiredFieldValidator>
                                                        </td>
                                                         
                                                    </tr>
                                                    <tr class="valign">
                                                        <td> <span class="valign" >4</span></td>
                                                         <td><span class="valign" >Diploma</span> </td>
                                                        <td><asp:TextBox ID="txtDiploma" runat="server" Text="Diploma" CssClass="form-control" ReadOnly="True"></asp:TextBox> </td>
                                                          <td><asp:TextBox ID="txtDiplomaSpealization" runat="server"  CssClass="form-control" ReadOnly="False"></asp:TextBox> </td>
                                                        <td><asp:TextBox ID="txtDiplomaCollege" runat="server"  CssClass="form-control" ReadOnly="False"></asp:TextBox> </td>
                                                          <td><asp:TextBox ID="txtDiplomaYearofPass" runat="server"  CssClass="form-control"  TextMode="Number"></asp:TextBox> </td>
                                                        <td><asp:TextBox ID="txtDiplomaPercentage" runat="server"  CssClass="form-control"  TextMode="Number"></asp:TextBox> </td>
                                                        <td><asp:DropDownList ID="ddlDiplomaClass" runat="server" CssClass="form-control">
                                                            <asp:ListItem  runat="server" Value="-1" Text="Select Class" />
                                                            <asp:ListItem  runat="server" Value="Distinction" Text="Distinction" />
                                                            <asp:ListItem  runat="server" Value="FC" Text="First Class" />
                                                            <asp:ListItem  runat="server" Value="SC" Text="Second Class" />
                                                            <asp:ListItem  runat="server" Value="PC" Text="Pass Class" />
                                                            </asp:DropDownList></td>
                                                    </tr>
                                                    <tr class="valign">
                                                        <td> <span class="valign" >5</span></td>
                                                         <td><span class="valign" >H.S.C</span> </td>
                                                        <td><asp:TextBox ID="txtHSC" runat="server" Text="H.S.C" CssClass="form-control" ReadOnly="True"></asp:TextBox> </td>
                                                          <td><asp:TextBox ID="txtHSCSpealization" runat="server"  CssClass="form-control" ReadOnly="False"></asp:TextBox> </td>
                                                        <td><asp:TextBox ID="txtHSCCollege" runat="server"  CssClass="form-control" ReadOnly="False"></asp:TextBox> </td>
                                                          <td><asp:TextBox ID="txtHSCYearofPass" runat="server"  CssClass="form-control"  TextMode="Number"></asp:TextBox> </td>
                                                        <td><asp:TextBox ID="txtHSCPercentage" runat="server"  CssClass="form-control"  TextMode="Number"></asp:TextBox> </td>
                                                        <td><asp:DropDownList ID="ddlHSCClass" runat="server" CssClass="form-control">
                                                            <asp:ListItem  runat="server" Value="-1" Text="Select Class" />
                                                            <asp:ListItem  runat="server" Value="Distinction" Text="Distinction" />
                                                            <asp:ListItem  runat="server" Value="FC" Text="First Class" />
                                                            <asp:ListItem  runat="server" Value="SC" Text="Second Class" />
                                                            <asp:ListItem  runat="server" Value="PC" Text="Pass Class" />
                                                            </asp:DropDownList></td>
                                                    </tr>
                                                    <tr class="valign">
                                                        <td> <span class="valign" >6</span></td>
                                                         <td><span class="valign" >Other</span> </td>
                                                        <td><asp:TextBox ID="txtOther" runat="server" Text="" CssClass="form-control" ReadOnly="False"></asp:TextBox> </td>
                                                          <td><asp:TextBox ID="txtOtherSpealization" runat="server"  CssClass="form-control" ReadOnly="False"></asp:TextBox> </td>
                                                        <td><asp:TextBox ID="txtOtherCollege" runat="server"  CssClass="form-control" ReadOnly="False"></asp:TextBox> </td>
                                                          <td><asp:TextBox ID="txtOtherYearofPass" runat="server"  CssClass="form-control"  TextMode="Number"></asp:TextBox> </td>
                                                        <td><asp:TextBox ID="txtOtherPercentage" runat="server"  CssClass="form-control"  TextMode="Number"></asp:TextBox> </td>
                                                        <td><asp:DropDownList ID="ddlOtherClass" runat="server" CssClass="form-control">
                                                            <asp:ListItem  runat="server" Value="-1" Text="Select Class" />
                                                            <asp:ListItem  runat="server" Value="Distinction" Text="Distinction" />
                                                            <asp:ListItem  runat="server" Value="FC" Text="First Class" />
                                                            <asp:ListItem  runat="server" Value="SC" Text="Second Class" />
                                                            <asp:ListItem  runat="server" Value="PC" Text="Pass Class" />
                                                            </asp:DropDownList></td>
                                                    </tr>
                                                </tbody>
                                                </table>
                     </div>
             </div>
         </div>
           <hr style="border:0.1px solid ;" />
             <div class="row" style="margin:25px;">
             <div class="col-md-3">
                <span  style="background-color:darkslateblue;color:white;padding:5px;">
                         
                         <strong>Experiance</strong>
                    
                </span>
             </div>
         </div>
         
     
            <div class="row margin_25">
                <div class="col-md-1"></div>
                 <div class="col-md-1 pading_5">
                 <strong> Teaching </strong>
                 </div>
                <div class="col-md-2">
                    <asp:TextBox ID="txtExTeachingYear" runat="server" TextMode="Number" placeholder="Year" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <asp:TextBox ID="txtExTeachingMonth" runat="server" TextMode="Number" placeholder="Month" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
         <div class="row margin_25">
                <div class="col-md-1"></div>
                 <div class="col-md-1 pading_5">
                 <strong> Industry </strong>
                 </div>
                <div class="col-md-2">
                    <asp:TextBox ID="txtExIndustryYear" runat="server" TextMode="Number" placeholder="Year" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <asp:TextBox ID="txtExIndusryMonth" runat="server" TextMode="Number" placeholder="Month" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
         <div class="row margin_25">
                <div class="col-md-1"></div>
                 <div class="col-md-1 pading_5">
                 <strong> Other </strong>
                 </div>
                <div class="col-md-2">
                    <asp:TextBox ID="txtExOtherYear" runat="server" TextMode="Number" placeholder="Year" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <asp:TextBox ID="txtExOtherMonth" runat="server" TextMode="Number" placeholder="Month" CssClass="form-control"></asp:TextBox>
                </div>
        </div>
             <div class="row margin_25">
                 <div class="col-md-2"></div>
                 <div class=" col-md-10">
                    
                                               
                                                <div class="table-responsive">
                                                    <table class="table table-bordered ">
                                                        <thead>
                                                            <tr>
                                                                <th class=" text-center">#</th>
                                                                <th >Institute / Organization Name</th>
                                                                <th >Designation</th>
                                                                <th >From Month-Year</th>
                                                                <th >To Month-Year</th>
                                                                <th >Duration Year</th>
                                                                <th >Duration Month</th>
                                                            </tr>
                                                        </thead>

                                                        <tbody>
                                                            <tr>
                                                                <td>1 </td>
                                                                <td> <asp:TextBox ID="txtEx1Institute" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx1Designation" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                                  <td> <asp:TextBox ID="txtEx1FromMonthYear" runat="server" placeholder="mm-yyyy" CssClass="form-control"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx1ToMonthYear" runat="server" placeholder="mm-yyyy" CssClass="form-control"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx1DurationYear" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx1DurationMonth" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox></td>
                                                            </tr>
                                                             <tr>
                                                                <td>2 </td>
                                                                <td> <asp:TextBox ID="txtEx2Institute" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx2Designation" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                                  <td> <asp:TextBox ID="txtEx2FromMonthYear" runat="server" placeholder="mm-yyyy" CssClass="form-control"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx2ToMonthYear" runat="server" placeholder="mm-yyyy" CssClass="form-control"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx2DurationYear" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx2DurationMonth" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox></td>
                                                            </tr>
                                                             <tr>
                                                                <td>3 </td>
                                                                <td> <asp:TextBox ID="txtEx3Institute" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx3Designation" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                                  <td> <asp:TextBox ID="txtEx3FromMonthYear" runat="server" placeholder="mm-yyyy" CssClass="form-control"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx3ToMonthYear" runat="server" placeholder="mm-yyyy" CssClass="form-control"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx3DurationYear" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx3DurationMonth" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox></td>
                                                            </tr>
                                                             <tr>
                                                                <td>4 </td>
                                                                <td> <asp:TextBox ID="txtEx4Institute" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx4Designation" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                                  <td> <asp:TextBox ID="txtEx4FromMonthYear" runat="server" placeholder="mm-yyyy" CssClass="form-control"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx4ToMonthYear" runat="server" placeholder="mm-yyyy" CssClass="form-control"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx4DurationYear" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox></td>
                                                                 <td> <asp:TextBox ID="txtEx4DurationMonth" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox></td>
                                                            </tr>
                                                        </tbody>
                                            </table>
                                           </div>
                                   </div>
                              
            </div>
       <hr style="border:0.1px solid ;" />
        <div class="row margin_25 text-center">
            <asp:Button ID="btnApplly" runat="server" Text="Send Application" ValidationGroup="Apply" CssClass="btn btn-primary text-center" />
        </div>
        
          </div>
    </form>
</body>
</html>

