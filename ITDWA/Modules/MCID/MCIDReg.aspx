<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MCIDReg.aspx.cs" Inherits="ITDWA.Modules.MCID.MCIDReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<head runat="server">

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Beneficiary Family Registration</title>
</head>
<body>


    <div class="container" style="margin-top: 1em;background-color:#66D77E">
        <!-- Sign up form -->
        <form id="VVID" runat="server">
            <!-- Sign up card -->
            <div class="card person-card">
                <div class="card-body">
                    <button type="button" onclick='window.location = "/Default.aspx";' class="btn btn-primary"><< Back To Home</button>
                    <br />
                    <br />
                    <!-- Sex image -->
                    <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">Beneficiary Family Registration Form</button>
                    <h2 id="txtVVID" style="margin-left: 30%" class="card-title"></h2>
                    <br/>
                    <br/>
                    <!-- First row (on medium screen) -->

                    <div class="row">
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="TextBox1" type="text" runat="server" class="form-control" placeholder="Family ID"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtFirstName" runat="server" runat="server" type="text" class="form-control" placeholder="Family Head Name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtLastName" type="text" runat="server" class="form-control" placeholder="Father Name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtFatherName" type="text" runat="server" class="form-control" placeholder="Age"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtAge" type="text" runat="server" class="form-control" placeholder="Gender"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtGender" type="text" runat="server" class="form-control" placeholder="Family Head Identity"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtCast" type="text" runat="server" class="form-control" placeholder="Identity Type"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtDOB" type="text" runat="server" class="form-control" placeholder="Identity Card Number"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtIDType" type="text" runat="server" class="form-control" placeholder="Occupation"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtIDNum" type="text" runat="server" class="form-control" placeholder="Contact Number"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="TextBox2" type="text" runat="server" class="form-control" placeholder="Govt.Scheme Name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="TextBox3" type="text" runat="server" class="form-control" placeholder="Scheme Identity Number"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="TextBox4" type="text" runat="server" class="form-control" placeholder="Department"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-12">
                            <textarea id="txtRemarks" cols="300" class="form-control" runat="server" placeholder="Remarks" rows="3"></textarea>

                        </div>
                    </div>
                </div>
            </div>
            <br />
            
            <div class="row">
                <div class="col-md-6" style="padding=0.5em;background-color:#66D77E">
                    <div class="card">
                        <div class="card-body">
                             <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">Beneficiary Address</button>
                            <div class="form-group">
                                <asp:Label class="col-form-label">D.No</asp:Label>
                                <asp:TextBox type="email" runat="server" class="form-control" ID="txtDno" placeholder="" required></asp:TextBox>
                                <div class="email-feedback">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email" class="col-form-label">Village</label>
                                <asp:TextBox type="email" runat="server" class="form-control" ID="txtVillage" placeholder="" required></asp:TextBox>
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

                <div class="col-md-6" style="background-color:#66D77E">
                    <div class="card">
                        <div class="card-body">
                           
                            <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">Add Family Member</button>

                                <div class="row">
                                    <div class="form-group col-md-6">
                                    <label for="password" class="col-form-label">Family Member Name:</label>
                                    <asp:TextBox type="password" runat="server" class="form-control" ID="txtFMN" placeholder="" required></asp:TextBox>
                                        </div>

                                    <div class="form-group col-md-6">
                                        <label for="password_conf" class="col-form-label">Gender:</label>
                                        <asp:TextBox type="password" runat="server" class="form-control" ID="ddlGender" placeholder="" required></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="password_conf" class="col-form-label">Age:</label>
                                        <asp:TextBox type="password" runat="server" class="form-control" ID="TextBox5" placeholder="" required></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="password_conf" class="col-form-label">Family Member Identity:</label>
                                        <asp:TextBox type="password" runat="server" class="form-control" ID="TextBox6" placeholder="" required></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="password_conf" class="col-form-label">Identity Type:</label>
                                        <asp:TextBox type="password" runat="server" class="form-control" ID="TextBox7" placeholder="" required></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="password_conf" class="col-form-label">Identity Card Number:</label>
                                        <asp:TextBox type="password" runat="server" class="form-control" ID="TextBox8" placeholder="" required></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="password_conf" class="col-form-label">Occupation:</label>
                                        <asp:TextBox type="password" runat="server" class="form-control" ID="TextBox9" placeholder="" required></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="password_conf" class="col-form-label">Contact Number:</label>
                                        <asp:TextBox type="password" runat="server" class="form-control" ID="TextBox10" placeholder="" required></asp:TextBox>
                                    </div>
                                     <div class="form-group col-md-6">
                                        <label for="password_conf" class="col-form-label">Govt.Scheme Name:</label>
                                        <asp:TextBox type="password" runat="server" class="form-control" ID="TextBox11" placeholder="" required></asp:TextBox>
                                    </div>
                                     <div class="form-group col-md-6">
                                        <label for="password_conf" class="col-form-label">Scheme Identity Number:</label>
                                        <asp:TextBox type="password" runat="server" class="form-control" ID="TextBox12" placeholder="" required></asp:TextBox>
                                    </div>
                                     <div class="form-group col-md-6">
                                        <label for="password_conf" class="col-form-label">Department:</label>
                                        <asp:TextBox type="password" runat="server" class="form-control" ID="TextBox13" placeholder="" required></asp:TextBox>
                                    </div>
                                     <div class="form-group col-md-12">
                                        <label for="password_conf" class="col-form-label">Remarks:</label>
                                         <textarea id="txtremarksmem" cols="300" class="form-control" runat="server" placeholder="" rows="2"></textarea>
                                    </div>
                                </div>
                           
                        </div>
                    </div>
                </div>
            </div>
            <div style="margin-top: 1em;">
                <div class="row">
                    <div class="col-md-6" style="background-color:#66D77E">
                        <asp:Button ID="btnRegister" type="button" Text="Register" runat="server" class="btn btn-primary btn-lg btn-block"></asp:Button>
                    </div>
                    <br />
                    <br />
                    <div class="col-md-6" style="background-color:#66D77E">
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
