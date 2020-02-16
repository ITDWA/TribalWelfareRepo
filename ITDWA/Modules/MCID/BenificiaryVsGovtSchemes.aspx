<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BenificiaryVsGovtSchemes.aspx.cs" Inherits="ITDWA.Modules.MCID.BenificiaryVsGovtSchemes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<head runat="server">

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Beneficiary Family Registration</title>
</head>
<body>


    <div class="container" style="margin-top: 1em; background-color: #66D77E">
        <!-- Sign up form -->
        <form id="Beneficiary_VS_Gvt_Schemes" runat="server">
            <!-- Sign up card -->
            <div class="card person-card">
                <div class="card-body">
                    <button type="button" onclick='window.location = "/Default.aspx";' class="btn btn-primary"><< Back To Home</button>
                    <br />
                    <br />
                    <!-- Sex image -->
                    <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">Beneficiary VS Govt. Schemes</button>
                    <h2 id="txtVVID" style="margin-left: 30%" class="card-title"></h2>
                    <br />
                    <!-- First row (on medium screen) -->
                    <div class="fixed-table-container">
                        <div class="fixed-table-header">
                            <table></table>
                        </div>
                        <div class="fixed-table-body">
                            <table id="grid" class="table table-striped table-hover" data-toolbar="#toolbargrid" data-pagination="true" data-search="true">
                                <thead>
                                    <tr>
                                        <th class="text-left" style="">
                                            <div class="th-inner sortable">Family Member/ Head ID</div>
                                            <div class="fht-cell"></div>
                                        </th>
                                        <th class="text-left" style="">
                                            <div class="th-inner sortable">Name</div>
                                            <div class="fht-cell"></div>
                                        </th>
                                        <th class="text-left" style="">
                                            <div class="th-inner sortable">Beneficiary to Govt. Scheme</div>
                                            <div class="fht-cell"></div>
                                        </th>
                                        <th class="text-left" style="">
                                            <div class="th-inner sortable">Status</div>
                                            <div class="fht-cell"></div>
                                        </th>
                                        <th class="text-left" style="">
                                            <div class="th-inner sortable">Remarks</div>
                                            <div class="fht-cell"></div>
                                        </th>
                                        <th style="">
                                            <div class="th-inner ">Updated on</div>
                                            <div class="fht-cell"></div>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr data-index="0">
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">
                                            <div class="btn-group show-on-hover">
                                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                                    -Select- <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#">Select Status</a></li>
                                                    <li><a href="#">Received</a></li>
                                                    <li><a href="#">Not applied</a></li>
                                                    <li><a href="#">Not Eligible</a></li>
                                                    <li><a href="#">Rejected</a></li>
                                                    <li><a href="#">Pending for Approval</a></li>
                                                    <li><a href="#">Pending for Aadhaar link</a></li>
                                                    <li><a href="#">Pending for Bank A/C</a></li>
                                                    <li><a href="#">Pending for other reason</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                    </tr>
                                    <tr data-index="1">
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">
                                            <div class="btn-group show-on-hover">
                                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                                    -Select- <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#">Select Status</a></li>
                                                    <li><a href="#">Received</a></li>
                                                    <li><a href="#">Not applied</a></li>
                                                    <li><a href="#">Not Eligible</a></li>
                                                    <li><a href="#">Rejected</a></li>
                                                    <li><a href="#">Pending for Approval</a></li>
                                                    <li><a href="#">Pending for Aadhaar link</a></li>
                                                    <li><a href="#">Pending for Bank A/C</a></li>
                                                    <li><a href="#">Pending for other reason</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                    </tr>
                                    <tr data-index="2">
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">
                                            <div class="btn-group show-on-hover">
                                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                                    -Select- <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#">Select Status</a></li>
                                                    <li><a href="#">Received</a></li>
                                                    <li><a href="#">Not applied</a></li>
                                                    <li><a href="#">Not Eligible</a></li>
                                                    <li><a href="#">Rejected</a></li>
                                                    <li><a href="#">Pending for Approval</a></li>
                                                    <li><a href="#">Pending for Aadhaar link</a></li>
                                                    <li><a href="#">Pending for Bank A/C</a></li>
                                                    <li><a href="#">Pending for other reason</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                    </tr>
                                </tbody>
                                <tfoot></tfoot>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-3">
                            <asp:Label ID="TextBox1" type="text" runat="server" class="form-control" placeholder="Family ID">Family ID</asp:Label>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtFirstName" runat="server" runat="server" type="text" class="form-control" placeholder=""></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="Button1" type="button" Text="Submit" runat="server" class="btn btn-primary btn-lg btn-block"></asp:Button>
                        </div>
                    </div>

                    <div class="fixed-table-container">
                        <div class="fixed-table-header">
                            <table></table>
                        </div>
                        <div class="fixed-table-body">
                            <table id="grid" class="table table-striped table-hover" data-toolbar="#toolbargrid" data-pagination="true" data-search="true">
                                <thead>
                                    <tr>
                                        <th class="text-left" style="">
                                            <div class="th-inner sortable">Family Member/ Head ID</div>
                                            <div class="fht-cell"></div>
                                        </th>
                                        <th class="text-left" style="">
                                            <div class="th-inner sortable">Name</div>
                                            <div class="fht-cell"></div>
                                        </th>
                                        <th class="text-left" style="">
                                            <div class="th-inner sortable">Beneficiary to Govt. Scheme</div>
                                            <div class="fht-cell"></div>
                                        </th>
                                        <th class="text-left" style="">
                                            <div class="th-inner sortable">Status</div>
                                            <div class="fht-cell"></div>
                                        </th>
                                        <th class="text-left" style="">
                                            <div class="th-inner sortable">Remarks</div>
                                            <div class="fht-cell"></div>
                                        </th>
                                        <th style="">
                                            <div class="th-inner ">Updated</div>
                                            <div class="fht-cell"></div>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr data-index="0">
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">xxx
                                        </td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                    </tr>
                                    <tr data-index="1">
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">xxx
                                        </td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                    </tr>
                                    <tr data-index="2">
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">xxx
                                        </td>
                                        <td class="text-left" style="">XXX</td>
                                        <td class="text-left" style="">XXX</td>
                                    </tr>
                                </tbody>
                                <tfoot></tfoot>
                            </table>
                        </div>
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
        padding: 10px;
    }

    .show-on-hover:hover > ul.dropdown-menu {
        display: block;
    }
</style>

</html>
