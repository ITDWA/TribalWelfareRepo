<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoard1.aspx.cs" Inherits="ITDWA.DashBoard1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<head runat="server">

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>DashBoard1</title>
</head>
<body>


    <div class="container" style="background-color: #66D77E; margin-top: 1em;">
        <!-- Sign up form -->
        <form id="DashBoard1" runat="server">
            <!-- Sign up card -->
            <div class="card person-card">
                <div class="card-body">
                    <button type="button" onclick='window.location = "/Default.aspx";' class="btn btn-primary"><< Back To Home</button>
                    <br />
                    <br />
                    <!-- Sex image -->
                    <div class="row">
                        <div class="form-group col-md-12">
                            <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">aspirations & grievances</button>
                            <h2 id="txtVVID" style="margin-left: 30%" class="card-title"></h2>
                        </div>
                    </div>
                    <!-- First row (on medium screen) -->

                    <div class="row">
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="TextBox1" runat="server" type="text" class="form-control" placeholder="Date Range"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="TextBox4" runat="server" type="text" class="form-control" placeholder="From"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="TextBox5" runat="server" type="text" class="form-control" placeholder="To"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                        </div>
                        <div class="form-group col-md-3">
                            <asp:RadioButton ID="RadioButton1" runat="server" TextAlign="right" Text="&nbsp;Today" GroupName="Today"></asp:RadioButton>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:RadioButton ID="RadioButton2" runat="server" TextAlign="right" Text="&nbsp;Yesterday" GroupName="Yesterday"></asp:RadioButton>
                        </div>

                        <br />
                        <div class="fixed-table-container col-md-12">
                            <div class="fixed-table-header">
                                <table></table>
                            </div>
                            <div class="fixed-table-body">
                                <table id="grid" class="table table-striped table-hover" data-toolbar="#toolbargrid" data-pagination="true" data-search="true">
                                    <thead>
                                        <tr>
                                            <th class="text-left" style="background-color: #0c46db;">
                                                <div class="th-inner sortable">No of Grievances</div>
                                                <div class="fht-cell"></div>
                                            </th>
                                            <th class="text-left" style="background-color: #0c46db;">
                                                <div class="th-inner sortable">Resolved</div>
                                                <div class="fht-cell"></div>
                                            </th>
                                            <th class="text-left"  style="background-color: #0c46db;">
                                                <div class="th-inner sortable">Pending</div>
                                                <div class="fht-cell"></div>
                                            </th>
                                            <th class="text-left" style="background-color: #0c46db;">
                                                <div class="th-inner sortable">No of Aspirations</div>
                                                <div class="fht-cell"></div>
                                            </th>
                                            <th class="text-left" style="background-color: #0c46db;">
                                                <div class="th-inner sortable">Resolved</div>
                                                <div class="fht-cell"></div>
                                            </th>
                                            <th class="text-left" style="background-color: #0c46db;">
                                                <div class="th-inner ">Pending</div>
                                                <div class="fht-cell"></div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr data-index="0">
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                        </tr>
                                        <tr data-index="1">
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                        </tr>
                                        <tr data-index="2">
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                        </tr>
                                    </tbody>
                                    <tfoot></tfoot>
                                </table>
                            </div>
                        </div>                      
                        <br />
                        <br />
                       <div class="fixed-table-container col-md-12">
                            <div class="fixed-table-header">
                                <table></table>
                            </div>
                            <div class="fixed-table-body">
                                <table id="grid" class="table table-striped table-hover" data-toolbar="#toolbargrid" data-pagination="true" data-search="true">
                                    <thead>
                                        <tr>
                                            <th class="text-left" style="background-color: #0c46db;">
                                                <div class="th-inner sortable">Token Number</div>
                                                <div class="fht-cell"></div>
                                            </th>
                                            <th class="text-left" style="background-color: #0c46db;">
                                                <div class="th-inner sortable">Raised ID</div>
                                                <div class="fht-cell"></div>
                                            </th>
                                            <th class="text-left" style="background-color: #0c46db;">
                                                <div class="th-inner sortable">Consent person</div>
                                                <div class="fht-cell"></div>
                                            </th>
                                            <th class="text-left" style="background-color: #0c46db;">
                                                <div class="th-inner sortable">Grievance/Aspirations letter</div>
                                                <div class="fht-cell"></div>
                                            </th>
                                            <th class="text-left" style="background-color: #0c46db;">
                                                <div class="th-inner sortable">Last update on</div>
                                                <div class="fht-cell"></div>
                                            </th>
                                            <th  style="background-color: #0c46db;">
                                                <div class="th-inner ">Remarks</div>
                                                <div class="fht-cell"></div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr data-index="0">
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                        </tr>
                                        <tr data-index="1">
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX </td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                        </tr>
                                        <tr data-index="2">
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                            <td class="text-left" style="">XXX</td>
                                        </tr>
                                    </tbody>
                                    <tfoot></tfoot>
                                </table>
                            </div>
                        </div>
                        <br />
                        <br />
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
