<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VVIDReg.aspx.cs" Inherits="ITDWA.VVIDReg" %>

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
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtVV" type="text" runat="server" class="form-control" placeholder="VVID"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtFirstName" runat="server" type="text"
                                class="form-control" placeholder="First name" required="required"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtFirstName" runat="server"
                                Style="color: red; font-size: small" ErrorMessage='<img src="Warning.jpg"/> Enter Valid First Name' ValidationExpression="^[A-Za-z\s]*$"></asp:RegularExpressionValidator>

                        </div>
                        <div class="form-group col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtLastName" type="text" runat="server" class="form-control" placeholder="Last name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-1"></div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtFatherName" type="text" runat="server" class="form-control" placeholder="Father name" required></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtFatherName" runat="server" Style="color: red; font-size: small"
                                ErrorMessage='<img src="Warning.jpg"/> Enter valid Father Name' ValidationExpression="^[A-Za-z\s]*$"></asp:RegularExpressionValidator>

                        </div>
                        <div class="form-group col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtFatherName"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtAge" type="text" runat="server" class="form-control" placeholder="Age" required></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage='<img src="Warning.jpg"/>Age Range is 0 - 100'
                                CultureInvariantValues="True" Style="color: red; font-size: small" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        </div>
                        <div class="form-group col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtAge"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-2">
                            <label class="col-form-label">Gender </label>
                            <asp:DropDownList runat="server" Class="dropdown" ID="ddlVVGender">
                                <asp:ListItem Text="-Select-" Value="1" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Male" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="ddlVVGender"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtCaste" type="text" runat="server" class="form-control" placeholder="Caste" required></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Style="color: red; font-size: small" ControlToValidate="txtCaste" runat="server"
                                ErrorMessage='<img src="Warning.jpg"/> Enter valid Caste' ValidationExpression="^[A-Za-z\s]*$"></asp:RegularExpressionValidator>

                        </div>
                        <div class="form-group col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtCaste"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtDOB" type="text" runat="server" class="form-control" placeholder="Date of Birth"></asp:TextBox>
                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator6" Style="color: red; font-size: small" ControlToValidate="txtDOB" runat="server"
                                ErrorMessage='<img src="Warning.jpg"/> Enter Valid Date' ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>--%>
                        </div>
                        <div class="form-group col-md-1">
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtDOB"></asp:RequiredFieldValidator>--%>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtIDType" type="text" runat="server" class="form-control" placeholder="Identity Type" required></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" Style="color: red; font-size: small" ControlToValidate="txtIDType" runat="server"
                                ErrorMessage='<img src="Warning.jpg"/> Enter valid Identity Type' ValidationExpression="^[A-Za-z\s]*$"></asp:RegularExpressionValidator>

                        </div>
                        <div class="form-group col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtIDType"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtIDNum" type="text" runat="server" class="form-control" placeholder="Id Number" required></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" Style="color: red; font-size: small" ControlToValidate="txtIDNum" runat="server"
                                ErrorMessage='<img src="Warning.jpg"/> Enter valid Identity Number' ValidationExpression="[a-zA-Z0-9\s]*$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtIDNum"></asp:RequiredFieldValidator>
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtDno"></asp:RequiredFieldValidator>
                                <asp:TextBox type="txt" runat="server" class="form-control" ID="txtDno" placeholder="" required></asp:TextBox>
                                <div class="email-feedback">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email" class="col-form-label">Village</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtVillage"></asp:RequiredFieldValidator>

                                <asp:TextBox type="txt" runat="server" class="form-control" ID="txtVillage" placeholder="" required></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" Style="color: red; font-size: small" ControlToValidate="txtVillage" runat="server"
                                    ErrorMessage='<img src="Warning.jpg"/> Enter valid Village Name' ValidationExpression="^[A-Za-z\s]*$"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label for="email" class="col-form-label">Mandal</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="ddlMandal"></asp:RequiredFieldValidator>

                                <asp:DropDownList ID="ddlMandal" runat="server">
                                </asp:DropDownList>
                                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator11" style="color:red;font-size:small" ControlToValidate="ddlMandal" runat="server" 
                                    ErrorMessage='<img src="Warning.jpg"/> Enter valid Mandal Name' ValidationExpression="^[A-Za-z\s]*$"></asp:RegularExpressionValidator>--%>

                                <div class="email-feedback">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email" class="col-form-label">District</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="ddlDisctrict"></asp:RequiredFieldValidator>

                                <asp:DropDownList ID="ddlDisctrict" AutoPostBack="true" OnSelectedIndexChanged="ddlDistOnSelectIndexChange" runat="server">
                                   
                                </asp:DropDownList>
                                <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator12" style="color:red;font-size:small" ControlToValidate="ddlDisctrict" runat="server" 
                                    ErrorMessage='<img src="Warning.jpg"/> Enter valid District Name' ValidationExpression="^[A-Za-z\s]*$"></asp:RegularExpressionValidator>--%>

                                <div class="email-feedback">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="tel" class="col-form-label">PIN Code</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtPin"></asp:RequiredFieldValidator>

                                <asp:TextBox type="text" runat="server" class="form-control" ID="txtPin" placeholder="" required></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator13" Style="color: red; font-size: small" ControlToValidate="txtPin" MaxLength="6" runat="server"
                                    ErrorMessage='<img src="Warning.jpg"/> Enter Valid Pincode' ValidationExpression="^[1-9]{1}[0-9]{2}\s{0,1}[0-9]{3}$"></asp:RegularExpressionValidator>

                            </div>
                            <div class="form-group">
                                <label for="tel" class="col-form-label">Contact Number</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtContact"></asp:RequiredFieldValidator>

                                <asp:TextBox type="text" runat="server" class="form-control" ID="txtContact" placeholder="" required></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator14" Style="color: red; font-size: small" ControlToValidate="txtContact" runat="server"
                                    ErrorMessage='<img src="Warning.jpg"/> Enter Valid Mobile No' ValidationExpression="^[1-9]{1}[0-9]{9}$"></asp:RegularExpressionValidator>

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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtPass"></asp:RequiredFieldValidator>

                                <asp:TextBox type="password" runat="server" class="form-control" ID="txtPass" placeholder="Type your password" required></asp:TextBox>
                                <div class="password-feedback">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password_conf" class="col-form-label">Pasword (confirm)</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage='<img src="Warning.jpg"/>' ControlToValidate="txtCnfPass"></asp:RequiredFieldValidator>

                                <asp:TextBox type="password" runat="server" class="form-control" ID="txtCnfPass" placeholder="Type your password again" required TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" Style="color: red; font-size: small"
                                    ErrorMessage='<img src="Warning.jpg"/> Password and Confirmation Password must match' ControlToCompare="txtPass" ControlToValidate="txtCnfPass"></asp:CompareValidator>
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
                    <div class="col-md-3">
                        <asp:Button ID="btnRegister" type="button" Text="Register" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnRegister_Click"></asp:Button>
                    </div>
                    <div class="col-md-6"></div>
                    <div class="col-md-3">
                        <asp:Button ID="btnCancel" type="button" Text="Cancel" runat="server" OnClientClick='javascript:window.location.href="/Default.aspx";' class="btn btn-primary btn-lg btn-block"></asp:Button>
                        <%--<button type="button" class="cancelBtn btn btn-primary btn-lg btn-block" onclick='window.location = "/Default.aspx";'>Cancel</button>--%>
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

    function Validate() {

        var inputValue = document.getElementById("txtFirstName").value;
        var reg = new RegExp('^\\d+$');
        var test = reg.test(inputValue);

        //--Do something with test--
        console.log(test);

    }
</script>
</html>
