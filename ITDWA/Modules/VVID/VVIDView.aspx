<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VVIDView.aspx.cs" Inherits="ITDWA.Modules.VVID.VVIDView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<head runat="server">

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>VVID View</title>
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

                    <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">After login into VV ID</button>
                    <h2 id="txtVVID" style="margin-left: 30%" class="card-title"></h2>
                    <br>
                    <br>
                    <div class="row">
                        <div class="form-group col-md-4">
                            <asp:Label ID="txtVV" type="label" runat="server" class="form-control">VV ID:</asp:Label>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:Label ID="Label1" type="label" runat="server" class="form-control">VV Name:</asp:Label>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:Label ID="Label2" type="label" runat="server" class="form-control">Contact Number: </asp:Label>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="form-group col-md-7">
                            <asp:Button ID="Button1" type="button" Text="Generate Family ID and Mapping" runat="server" class="btn btn-primary btn-lg btn-block"></asp:Button>
                        </div>
                        <div class="form-group col-md-4">
                            <textarea id="TextBox3" runat="server" type="text" class="form-control" placeholder="Notifications/ Instructions/ Memos"></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-7">
                            <asp:Button ID="Button2" type="button" Text="View Families under his jurisdiction" runat="server" class="btn btn-primary btn-lg btn-block"></asp:Button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-7">
                            <asp:Button ID="Button3" type="button" Text="Raising token for Grievances / Aspirations" runat="server" class="btn btn-primary btn-lg btn-block"></asp:Button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-7">
                            <asp:Button ID="Button4" type="button" Text="Update Daily Report" runat="server" class="btn btn-primary btn-lg btn-block"></asp:Button>
                        </div>
                        <div class="form-group col-md-4">
                            <textarea id="TextBox1" runat="server" type="text" class="form-control" placeholder="Reply for Notifications/ Instructions/ Memos"></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-7">
                            <asp:Button ID="Button5" type="button" Text="Update or Verify Status of  Grievances / Aspirations" runat="server" class="btn btn-primary btn-lg btn-block"></asp:Button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-7">
                                <asp:Button ID="Button6" type="button" Text="Beneficiary VS Govt. Schemes" runat="server" class="btn btn-primary btn-lg btn-block"></asp:Button>
                        </div>
                    </div>
                    <div style="margin-top: 1em;">
                        <div class="row">
                            <div class="col-md-3">
                            </div>
                            <div class="col-md-6">
                                <asp:Button ID="btnRegister" type="button" Text="Submit" runat="server" class="btn btn-primary btn-lg btn-block"></asp:Button>
                            </div>
                        </div>
                        <br />
                        <br />
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
