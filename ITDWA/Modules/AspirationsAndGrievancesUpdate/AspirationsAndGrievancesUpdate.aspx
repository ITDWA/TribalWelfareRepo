<%@ Page Title="Aspiration Page" Language="C#" AutoEventWireup="true" CodeBehind="AspirationsAndGrievancesUpdate.aspx.cs" Inherits="ITDWA.AspirationsAndGrievancesUpdate" %>

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
                        <div class="form-group col-md-12">
                            <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">aspirations & grievances update</button>
                            <h2 id="txtVVID" style="margin-left: 30%" class="card-title"></h2>
                        </div>

                    </div>
                    <br>
                    <br>
                    <!-- First row (on medium screen) -->

                    <div class="row jumbotron">
                        <div class="form-group col-md-4">
                            <asp:RadioButton ID="RadioButton1" runat="server" TextAlign="right" Text="&nbsp;Public" GroupName="General"></asp:RadioButton>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:RadioButton ID="RadioButton2" runat="server" TextAlign="right" Text="&nbsp;SC" GroupName="General"></asp:RadioButton>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:RadioButton ID="RadioButton5" runat="server" TextAlign="right" Text="&nbsp;DC" GroupName="General"></asp:RadioButton>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:RadioButton ID="RadioButton3" runat="server" TextAlign="right" Text="&nbsp;MC" GroupName="General"></asp:RadioButton>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:RadioButton ID="RadioButton4" runat="server" TextAlign="right" Text="&nbsp;VC" GroupName="General"></asp:RadioButton>
                        </div>
                    </div>
                    <div class="row jumbotron">
                        <div class="form-group col-md-4">
                            <asp:RadioButton ID="RadioButton6" runat="server" TextAlign="right" Text="&nbsp;General" GroupName="General"></asp:RadioButton>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:RadioButton ID="RadioButton7" runat="server" TextAlign="right" Text="&nbsp;Confidential" GroupName="General"></asp:RadioButton>
                        </div>
                    </div>
                    <div class="row jumbotron">
                        <div class="form-group col-md-4">
                            <asp:RadioButton ID="RadioButton8" runat="server" TextAlign="right" Text="&nbsp;Aspirations" GroupName="General"></asp:RadioButton>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:RadioButton ID="RadioButton9" runat="server" TextAlign="right" Text="&nbsp;Grievances" GroupName="General"></asp:RadioButton>
                        </div>
                    </div>
                    <br />

                    <table id="customers">
                        <tr>
                            <th>Grievance ID</th>
                            <th>Dept</th>
                            <th>Consent Person</th>
                            <th>Raised by</th>
                            <th>Status</th>
                            <th>Letter</th>
                            <th>Send to</th>
                            <th>Update</th>

                        </tr>
                        <tr>
                            <td>xxx</td>
                           <td>xxx</td>
                             <td>xxx</td>
                            <td>xxx</td>
                            <td>xxx</td>
                      <td>xxx</td>
                             <td>xxx</td>
                           <td>xxx</td>
                        </tr>
                    </table>

                </div>
            </div>
    </div>

    <br />
    </form>
    </div>

</body>
<style>
    body {
        background-color: #e9ebee;
    }
    <legend style="float:right">

    #customers {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #customers tr:hover {
            background-color: #ddd;
        }

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #4CAF50;
            color: white;
        }
</style>

</html>
