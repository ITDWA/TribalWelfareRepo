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


    <div class="container" style="background-color: #66D77E; margin-top: 1em;">
        <!-- Sign up form -->
        <form id="VVID" runat="server">
            <!-- Sign up card -->
            <div class="card person-card">
                <div class="card-body">
                    <button type="button" onclick='window.location = "/Default.aspx";' class="btn btn-primary"><< Back To Home</button>
                    <br />
                    <br />
                    <!-- Sex image -->
                    <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">CMTID Registration Form</button>
                    <h2 id="txtVVID" style="margin-left: 30%" class="card-title"></h2>
                    <br>
                    <br>
                    <!-- First row (on medium screen) -->

                    <div class="row">
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtCMTT" type="text" runat="server" class="form-control" placeholder="CMTID"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtCMTName" runat="server" type="text" class="form-control" placeholder="CMT Name" required="required"></asp:TextBox>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Style="color: red; font-size: small" ControlToValidate="txtCMTName" runat="server"
                                ErrorMessage='<img src="Warning.jpg"/> Enter Valid CMT Name' ValidationExpression="^[A-Za-z\s]*$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtCMTName"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtCMTFatherName" type="text" runat="server" class="form-control" placeholder="Father Name" required="required"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Style="color: red; font-size: small" ControlToValidate="txtCMTFatherName" runat="server"
                                ErrorMessage='<img src="Warning.jpg"/> Enter Valid Father Name' ValidationExpression="^[A-Za-z\s]*$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtCMTFatherName"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtCMTAge" type="text" runat="server" class="form-control" placeholder="Age" required="required"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" Style="color: red; font-size: small" ControlToValidate="txtCMTAge"
                                CultureInvariantValues="True" ErrorMessage='<img src="Warning.jpg"/> Age should be in range of 0 - 100' MaximumValue="100" MinimumValue="0"
                                Type="Integer"></asp:RangeValidator>
                        </div>
                        <div class="form-group col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtCMTAge"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-2">
                            <label class="col-form-label">Gender </label>
                            <asp:DropDownList runat="server" ID="ddlCMTGender">
                                <asp:ListItem Text="-Select-" Value="1" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Male" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="ddlCMTGender"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtCMTCast" type="text" runat="server" class="form-control" placeholder="Caste" required="required"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Style="color: red; font-size: small" ControlToValidate="txtCMTCast" runat="server"
                                ErrorMessage='<img src="Warning.jpg"/> Enter Valid Caste' ValidationExpression="^[A-Za-z\s]*$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtCMTCast"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtCMTIdentity" type="text" runat="server" class="form-control" placeholder="CMT Identity" required="required"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Style="color: red; font-size: small" ControlToValidate="txtCMTIdentity" runat="server"
                                ErrorMessage='<img src="Warning.jpg"/> Enter Valid CMT Identity' ValidationExpression="^[A-Za-z\s]*$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtCMTIdentity"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtCMTIDType" type="text" runat="server" class="form-control" placeholder="Identity Type" required="required"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" Style="color: red; font-size: small" ControlToValidate="txtCMTIDType" runat="server"
                                ErrorMessage='<img src="Warning.jpg"/> Enter Valid Identity Type' ValidationExpression="^[A-Za-z\s]*$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtCMTIDType"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtCMTIDNum" type="text" runat="server" class="form-control" placeholder="Identity Card Number" required></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Style="color: red; font-size: small" ControlToValidate="txtCMTIDNum" runat="server"
                                ErrorMessage='<img src="Warning.jpg"/> Enter Valid Identity Card Number' ValidationExpression="[a-zA-Z0-9\s]*$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtCMTIDNum"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>

            <br />

            <div class="row">
                <div class="col-md-6" style="padding=0.5em;">
                    <div class="card">
                        <div class="card-body">
                            <button type="button" disabled="true" Style="font-weight: 700" class="btn btn-primary btn-lg btn-block">Address</button>

                            <div class="form-group">
                                <label class="col-form-label">D.No</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage=' <img src="Warning.jpg"/>' ControlToValidate="txtDno"></asp:RequiredFieldValidator>
                               
                                <asp:TextBox type="txt" runat="server" class="form-control" ID="txtDno" placeholder="" required="required"></asp:TextBox>
                                <div class="email-feedback">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="email" class="col-form-label">Village</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage=' <img src="Warning.jpg"/>' ControlToValidate="txtVillage"></asp:RequiredFieldValidator>
                                
                                <asp:TextBox type="txt" runat="server" class="form-control" ID="txtVillage" placeholder="" required="required"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" Style="color: red; font-size: small" ControlToValidate="txtVillage" runat="server"
                                    ErrorMessage='<img src="Warning.jpg"/> Enter Valid Village Name' ValidationExpression="^[A-Za-z\s]*$"></asp:RegularExpressionValidator>

                                <div class="email-feedback">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email" class="col-form-label">Mandal</label><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage=' <img src="Warning.jpg"/>' ControlToValidate="ddlMandal"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddlMandal" runat="server"></asp:DropDownList>
                               <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator13" Style="color: red; font-size: small" ControlToValidate="ddlMandal" runat="server"
                                    ErrorMessage='<img src="Warning.jpg"/> Enter Valid Mandal Name' ValidationExpression="^[A-Za-z\s]*$"></asp:RegularExpressionValidator>--%>

                                <div class="email-feedback">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email" class="col-form-label">District</label><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage=' <img src="Warning.jpg"/>' ControlToValidate="ddlDisctrict"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddlDisctrict" AutoPostBack = "true" OnSelectedIndexChanged="ddlDistOnSelectIndexChange" runat="server"></asp:DropDownList>
                               <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator14" Style="color: red; font-size: small" ControlToValidate="ddlDisctrict" runat="server"
                                    ErrorMessage='<img src="Warning.jpg"/> Enter Valid District Name' ValidationExpression="^[A-Za-z\s]*$"></asp:RegularExpressionValidator>--%>

                                <div class="email-feedback">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="tel" class="col-form-label">PIN Code</label><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage=' <img src="Warning.jpg"/>' ControlToValidate="txtPin"></asp:RequiredFieldValidator>
                                <asp:TextBox type="text" runat="server" class="form-control" ID="txtPin" placeholder="" required></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" Style="color: red; font-size: small" ControlToValidate="txtPin"
                                    ErrorMessage='<img src="Warning.jpg"/> Enter Valid Pincode' runat="server" ValidationExpression="^[\s][1-9]{1}[0-9]{2}\s{0,1}[0-9]{3}[\s]*$"></asp:RegularExpressionValidator>
                                <div class="phone-feedback">
                                </div>
                                <div class="form-group">
                                    <label for="email" class="col-form-label">Contact Number</label><asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage=' <img src="Warning.jpg"/>' ControlToValidate="contactnumber"></asp:RequiredFieldValidator>
                                    <asp:TextBox type="txt" runat="server" class="form-control" ID="contactnumber" placeholder="" required="required"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" Style="color: red; font-size: small" ControlToValidate="contactnumber" runat="server"
                                        ErrorMessage='<img src="Warning.jpg"/> Enter Valid Mobile No' ValidationExpression="^[\s]*[1-9\s]{1}[0-9]{9}[\s]*$"></asp:RegularExpressionValidator>

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
                                <asp:TextBox type="txt" runat="server" class="form-control" ID="txtDepartment" placeholder="" required></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="Designation" class="col-form-label">Designation</label><asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage=' <img src="Warning.jpg"/>' ControlToValidate="txtDsignation"></asp:RequiredFieldValidator>
                                <asp:TextBox type="txt" runat="server" class="form-control" ID="txtDsignation" placeholder="" required="required"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" Style="color: red; font-size: small" ControlToValidate="txtDsignation" runat="server"
                                    ErrorMessage='<img src="Warning.jpg"/> Enter Valid Designation' ValidationExpression="[a-zA-Z0-9\s]*$"></asp:RegularExpressionValidator>

                            </div>
                            <div class="form-group">
                                <label for="Remarks" class="col-form-label">Remarks</label><asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage=' <img src="Warning.jpg"/>' ControlToValidate="txtRemarks"></asp:RequiredFieldValidator>
                                <asp:TextBox type="txt" runat="server" class="form-control" ID="txtRemarks" placeholder="" required="required"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator12"
                                    ErrorMessage='<img src="Warning.jpg"/> Enter Valid Remarks' Style="color: red; font-size: small" ControlToValidate="txtRemarks" runat="server" ValidationExpression="[a-zA-Z0-9-.&%*#/\s]*$"></asp:RegularExpressionValidator>

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


                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div style="margin-top: 1em;">
                <div class="row">
                      <div class="col-md-1">
                    </div>
                    <div class="col-md-3">
                        <asp:Button ID="btnSubmit" type="button" Text="Submit" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnSubmit_Click"></asp:Button>
                    </div>
                       <div class="col-md-4"></div>
                    <div class="col-md-3">
                        <button type="button" class="btn btn-primary btn-lg btn-block" onclick='window.location = "/Default.aspx";'>Cancel</button>
                    </div>
                       <div class="col-md-1">
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
     #btnSubmit {
              display: inline-block;
        padding: 2px 3px;
        font-size: 18px;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        outline: none;
        border: none;
        border-radius: 15px;
        box-shadow: 0 4px #999;
    }

        #btnSubmit:active {
            background-color: #3e8e41;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
        }

    #btnCancel {
        display: inline-block;
        padding: 2px 3px;
        font-size: 18px;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        outline: none;
        border: none;
        border-radius: 15px;
        box-shadow: 0 4px #999;
    }

        #btnCancel:active {
            background-color: #3e8e41;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
        }

         .btn {
        display: inline-block;
        padding: 2px 4px;
        font-size: 18px;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        outline: none;
        border: none;
        border-radius: 15px;
        box-shadow: 0 4px #999;
    }

             .btn:active {
            background-color: #3e8e41;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
        }
</style>

</html>
