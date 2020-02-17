﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VVIDReg.aspx.cs" Inherits="ITDWA.VVIDReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<head runat="server">

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="css/jquery-ui.css" rel="stylesheet" />
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <title>VVID Registration</title>
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

                    <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">VVID Registration Form</button>
                    <h2 id="txtVVID" style="margin-left: 30%" class="card-title"></h2>
                    <br>
                    <br>
                    <!-- First row (on medium screen) -->

                    <div class="row">
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtVV" type="text" runat="server" class="form-control" placeholder="VVID"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtFirstName" runat="server" type="text" class="form-control" placeholder="First name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtLastName" type="text" runat="server" class="form-control" placeholder="Last name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtFatherName" type="text" runat="server" class="form-control" placeholder="Father name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtAge" type="text" runat="server" class="form-control" placeholder="Age"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtGender" type="text" runat="server" class="form-control" placeholder="Gender"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtCaste" type="text" runat="server" class="form-control" placeholder="Caste"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtDOB" type="text" runat="server" class="form-control" placeholder="Date of Birth"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtIDType" type="text" runat="server" class="form-control" placeholder="Identity Type"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtIDNum" type="text" runat="server" class="form-control" placeholder="Id Number"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <br />

            <div class="row">
                <div class="col-md-6" style="padding=0.5em;">
                    <div class="card">
                        <div class="card-body">
                            <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">Address</button>

                            <div class="form-group">
                                <label class="col-form-label">D.No</label>
                                <asp:TextBox type="txt" runat="server" class="form-control" ID="txtDno" placeholder="" required></asp:TextBox>
                                <div class="email-feedback">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email" class="col-form-label">Village</label>
                                <asp:TextBox type="txt" runat="server" class="form-control" ID="txtVillage" placeholder="" required></asp:TextBox>
                                <div class="email-feedback">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email" class="col-form-label">Mandal</label>
                                <asp:DropDownList ID="ddlMandal" runat="server"></asp:DropDownList>
                                <div class="email-feedback">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email" class="col-form-label">District</label>
                                <asp:DropDownList ID="ddlDisctrict" runat="server"></asp:DropDownList>
                                <div class="email-feedback">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="tel" class="col-form-label">PIN Code</label>
                                <asp:TextBox type="text" runat="server" class="form-control" ID="txtPin" placeholder="" required></asp:TextBox>
                                <div class="phone-feedback">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="tel" class="col-form-label">Contact Number</label>
                                <asp:TextBox type="text" runat="server" class="form-control" ID="txtContact" placeholder="" required></asp:TextBox>
                                <div class="phone-feedback">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">Securize your VVID account !</button>

                            <div class="form-group">
                                <label for="password" class="col-form-label">Pasword</label>
                                <asp:TextBox type="password" runat="server" class="form-control" ID="txtPass" placeholder="Type your password" required></asp:TextBox>
                                <div class="password-feedback">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password_conf" class="col-form-label">Pasword (confirm)</label>
                                <asp:TextBox type="password" runat="server" class="form-control" ID="txtCnfPass" placeholder="Type your password again" required></asp:TextBox>
                                <div class="password_conf-feedback">
                                </div>
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
                        <asp:Button ID="btnRegister" type="button" Text="Register" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnRegister_Click"></asp:Button>
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
<script>
    $(document).ready(function () {
        $('#txtDOB').datepicker(
            {
                dateFormat: 'dd/mm/yy',
                changeMonth: true,
                changeYear: true,
                yearRange: '1950:2100'
            });
    })  
</script>
</html>
