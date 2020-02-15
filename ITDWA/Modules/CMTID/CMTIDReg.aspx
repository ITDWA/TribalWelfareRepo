<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CMTIDReg.aspx.cs" Inherits="ITDWA.CMTIDReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<head runat="server">
   
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>CMT Member Registration</title>
</head>
<body>
 

<div class="container" style="background-color:#66D77E; margin-top: 1em;">
    <!-- Sign up form -->
    <form id="VVID" runat="server">
        <!-- Sign up card -->
        <div class="card person-card">
            <div class="card-body">
                 <button type="button" onclick='window.location = "/Default.aspx";' class="btn btn-primary"><< Back To Home</button>
                <br />
                <br />
                <!-- Sex image -->
              <button type="button" disabled="true" style="font-weight:700" class="btn btn-primary btn-lg btn-block">CMTID Registration Form</button>
                <h2 id="txtVVID" style="margin-left:30%" class="card-title"></h2>
                <br>
                <br>
                <!-- First row (on medium screen) -->
               
                <div class="row">
                     <div class="form-group col-md-3">
                       <asp:TextBox id="txtCMTT" type="text" runat="server" class="form-control" placeholder="CMTID"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-3">
                       <asp:TextBox id="txtCMTName" runat="server" type="text" class="form-control" placeholder="CMT Name"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-3">
                       <asp:TextBox id="txtCMTFatherName" type="text" runat="server" class="form-control" placeholder="Father Name"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-3">
                       <asp:TextBox id="txtCMTAgeName" type="text" runat="server" class="form-control" placeholder="Age"></asp:TextBox>
                    </div>
                      <div class="form-group col-md-2">
                       <asp:TextBox id="txtCMTGender" type="text" runat="server" class="form-control" placeholder="Gender"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-2">
                        <asp:TextBox id="txtCMTCast" type="text" runat="server" class="form-control" placeholder="Cast"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-2">
                       <asp:TextBox id="txtCMTIdentity" type="text" runat="server" class="form-control" placeholder="CMT Identity"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-2">
                       <asp:TextBox id="txtCMTIDType" type="text" runat="server" class="form-control" placeholder="Identity Type"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-2">
                        <asp:TextBox id="txtCMTIDNum" type="text" runat="server" class="form-control" placeholder="Identity Card Number"></asp:TextBox>
                    </div>

                </div>
            </div>
        </div>
        
        <br />

        <div class="row">
            <div class="col-md-6" style="padding=0.5em;">
                <div class="card">
                    <div class="card-body">
                        <asp:button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">Address</asp:button>
                       
                        <div class="form-group">
                            <label class="col-form-label">D.No</label>
                            <asp:TextBox type="txt" runat="server" class="form-control" id="txtDno" placeholder="" required></asp:TextBox>
                            <div class="email-feedback">
                            
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-form-label">Village</label>
                            <asp:TextBox type="txt" runat="server" class="form-control" id="txtVillage" placeholder="" required></asp:TextBox>
                            <div class="email-feedback">
                            
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-form-label">Mandal</label>
                           <asp:TextBox type="txt" runat="server" class="form-control" id="txtMandal" placeholder="" required></asp:TextBox>
                            <div class="email-feedback">
                            
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-form-label">District</label>
                            <asp:TextBox type="txt" runat="server" class="form-control" id="txtDistrict" placeholder="" required></asp:TextBox>
                            <div class="email-feedback">
                            
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="tel" class="col-form-label">PIN Code</label>
                           <asp:TextBox type="text" runat="server" class="form-control" id="txtPin" placeholder="" required></asp:TextBox>
                            <div class="phone-feedback">
                            
                            </div>
                              <div class="form-group">
                            <label for="email" class="col-form-label">Contact Number</label>
                            <asp:TextBox type="txt" runat="server" class="form-control" id="contactnumber" placeholder="" required></asp:TextBox>
                            <div class="email-feedback">
                            
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
                
            <div class="col-md-6">
                <div class="card"> 
                    <div class="card-body">
                        <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">Department Details</button>
                       
                        <div class="form-group">
                            <label for="Department" class="col-form-label">Department</label>
                            <asp:TextBox type="txt" runat="server" class="form-control" id="txtDepartment" placeholder="" required></asp:TextBox>                          
                        </div>
                        <div class="form-group">
                            <label for=Designation" class="col-form-label">Designation</label>
                           <asp:TextBox type="txt" runat="server" class="form-control" id="txtDsignation" placeholder="" required></asp:TextBox>                     
                        </div>
                          <div class="form-group">
                            <label for="Remarks" class="col-form-label">Remarks</label>
                           <asp:TextBox type="txt" runat="server" class="form-control" id="txtRemarks" placeholder="" required></asp:TextBox>                        
                        </div>
                         <div class="form-group">
                             <br />
                             <br />
                             <br />
                             <br />
                             <br />
                             <br />
                             <br />
                             <br />
                             <br />
                             <br />
                             

                             </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="margin-top: 1em;">
            <div class="row">
              <div class="col-md-6">
                   <asp:Button ID="btnSubmit" type="button" Text="Submit" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnSubmit_Click"></asp:Button>
                  </div>
             <div class="col-md-6">
                 <button type="button" class="btn btn-primary btn-lg btn-block" onclick='window.location = "/Default.aspx";'>Cancel</button>
                  </div>
                </div>
            <br />
            <br />
        </div>
        </form>
</div>
   
</body>
    <style>
        body {
    background-color: #e9ebee;
}
    </style>

</html>
