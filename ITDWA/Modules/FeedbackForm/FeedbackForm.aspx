<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedbackForm.aspx.cs" Inherits="ITDWA.FeedbackForm" %>

<%--<!DOCTYPE html>--%>

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
                    <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">Feedback Form for Public</button>
                    <h2 id="txtVVID" style="margin-left: 30%" class="card-title"></h2>
                    <br>
                    <br>
                    <!-- First row (on medium screen) -->

                    <div class="row">
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtFamilyId" type="text" runat="server" class="form-control" placeholder="Family ID"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtFamHeadName" runat="server" type="text" class="form-control" placeholder="Family head name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtAddress" type="text" runat="server" class="form-control" placeholder="Address"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox type="txtTechSupVV" runat="server" class="form-control" ID="txtTechSupVV" placeholder="Technical support form VV"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="TechSupVVReview" type="text" runat="server" class="form-control" placeholder="Excellent/good/avg."></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtTechRemarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox type="txtMoralSupVV" runat="server" class="form-control" ID="txtMoralSupVV" placeholder="Moral support from VV"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtMoralReview" type="text" runat="server" class="form-control" placeholder="Excellent/good/avg."></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtMoralRemarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox type="txtResSup" runat="server" class="form-control" ID="txtResSup" placeholder="Grievance resolving Support from VV"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtResolveReview" type="text" runat="server" class="form-control" placeholder="Excellent/good/avg."></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtResolveRemarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                         <div class="form-group col-md-4">
                            <asp:TextBox type="txtCommunication" runat="server" class="form-control" ID="txtCommunication" placeholder="Communication"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtCommuReview" type="text" runat="server" class="form-control" placeholder="Excellent/good/avg."></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtCommRemarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                          <div class="form-group col-md-4">
                            <asp:TextBox type="txtinfo" runat="server" class="form-control" ID="txtinfo" placeholder="Provide sufficient information on Govt. schemes"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtinfoReview" type="text" runat="server" class="form-control" placeholder="Excellent/good/avg."></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtinfoRemarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                            <div class="form-group col-md-4">
                            <asp:TextBox type="txtDeliveryService" runat="server" class="form-control" ID="txtDeliveryService" placeholder="Delivering Services"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtDeliveryServiceReview" type="text" runat="server" class="form-control" placeholder="Excellent/good/avg."></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtDeliveryServiceRemarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox type="txtAllSupp" runat="server" class="form-control" ID="txtAllSupp" placeholder="Overall  Support from VV"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtAllSuppReview" type="text" runat="server" class="form-control" placeholder="Excellent/good/avg."></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtAllSuppRemarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                         <div class="form-group col-md-4">
                            <asp:TextBox type="txtMarks" runat="server" class="form-control" ID="txtMarks" placeholder="Marks For VV"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtMarksReview" type="text" runat="server" class="form-control" placeholder="Excellent/good/avg."></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtMarksRemarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <br />
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
