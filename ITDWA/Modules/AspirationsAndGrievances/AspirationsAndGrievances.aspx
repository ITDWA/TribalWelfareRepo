<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AspirationsAndGrievances.aspx.cs" Inherits="ITDWA.AspirationsAndGrievances" %>

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
                    <div class="row">
                        <div class="form-group col-md-2">
                        </div>
                        <div class="form-group col-md-7">
                            <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">aspirations & grievances</button>
                            <h2 id="txtVVID" style="margin-left: 30%" class="card-title"></h2>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="TextBox1" type="text" runat="server" class="form-control" placeholder="Grievances ID"></asp:TextBox>
                        </div>
                    </div>
                    <br>
                    <br>
                    <!-- First row (on medium screen) -->

                    <div class="row">
                        <div class="form-group col-md-4">
                            <asp:RadioButton ID="RadioButton1" runat="server" TextAlign="right" Text="&nbsp;General" GroupName="General"></asp:RadioButton>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:RadioButton ID="RadioButton2" runat="server" TextAlign="right" Text="&nbsp;Confidential" GroupName="General"></asp:RadioButton>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="TextBox3" runat="server" type="text" class="form-control" placeholder="Family head ID / Aadhaar number"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:RadioButton ID="RadioButton3" runat="server" TextAlign="right" Text="&nbsp;aspirations" GroupName="General"></asp:RadioButton>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:RadioButton ID="RadioButton4" runat="server" TextAlign="right" Text="&nbsp;grievances" GroupName="General"></asp:RadioButton>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="TextBox2" runat="server" type="text" class="form-control" placeholder="By VV/MC/DC/SC/CMT"></asp:TextBox>
                        </div>
                         <br />
                        <br />
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="ddlDepartment" type="text" runat="server" class="form-control" placeholder="Department"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtConsentPerson" type="text" runat="server" class="form-control" placeholder="Consent Person"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtRemarks1" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtCMTCast" type="text" runat="server" class="form-control" placeholder="Here automatically display their ID and details"></asp:TextBox>
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
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <div class="col-md-6">
                            <asp:Button ID="Button1" type="button" Text="Upload aspirations & grievances letter" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnSubmit_Click"></asp:Button>
                        </div>
                        <div class="col-md-3">
                            <button type="button" class="btn btn-primary btn-lg btn-block" onclick='window.location = "/Default.aspx";'>Upload</button>
                        </div>
                        <div class="col-md-3">
                            <button type="button" class="btn btn-primary btn-lg btn-block" onclick='window.location = "/Default.aspx";'>Submit</button>
                        </div>
                    </div>
                </div>
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
