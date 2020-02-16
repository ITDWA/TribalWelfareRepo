<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FieldVisitSchedUpdate.aspx.cs" Inherits="ITDWA.FieldVisit" %>

<%--<!DOCTYPE html>--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<head runat="server">

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Field Visit Update</title>
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
                    <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">Field Visit schedule update</button>
                    <h2 id="txtVVID" style="margin-left: 30%" class="card-title"></h2>
                    <br>
                    <br>
                    <!-- First row (on medium screen) -->

                    <div class="row">
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtVVId" type="text" runat="server" class="form-control" placeholder="VVID"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtVVName" runat="server" type="text" class="form-control" placeholder="VV name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtDCID" type="text" runat="server" class="form-control" placeholder="MC ID"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox type="txtMCID" runat="server" class="form-control" ID="txtMCID" placeholder="DC ID"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtF1Date" type="text" runat="server" class="form-control" placeholder="F1-Date"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtF1Route" type="text" runat="server" class="form-control" placeholder="Route Map"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox type="txtF1MCDCName" runat="server" class="form-control" ID="txtMoralSupVV" placeholder="MC/DC Name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtF1DtRemarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:Button ID="Button1" type="button" Text="Add" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnSubmit_Click"></asp:Button>
                        </div>
                        
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtF2Date" type="text" runat="server" class="form-control" placeholder="F2-Date"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtF2Route" type="text" runat="server" class="form-control" placeholder="Route Map"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox type="txtF2MCDCName" runat="server" class="form-control" ID="txtF2MCDCName" placeholder="MC/DC Name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtF2DtRemarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:Button ID="Button2" type="button" Text="Add" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnSubmit_Click"></asp:Button>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtF3Date" type="text" runat="server" class="form-control" placeholder="F3-Date"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtF3Route" type="text" runat="server" class="form-control" placeholder="Route Map"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox type="txtF3MCDCName" runat="server" class="form-control" ID="txtF3MCDCName" placeholder="MC/DC Name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtF3DtRemarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:Button ID="Button3" type="button" Text="Add" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnSubmit_Click"></asp:Button>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtF4Date" type="text" runat="server" class="form-control" placeholder="F4-Date"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtF4Route" type="text" runat="server" class="form-control" placeholder="Route Map"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox type="txtF4MCDCName" runat="server" class="form-control" ID="txtF4MCDCName" placeholder="MC/DC Name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtF4DtRemarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                         <div class="form-group col-md-2">
                            <asp:Button ID="Button4" type="button" Text="Add" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnSubmit_Click"></asp:Button>
                        </div>

                         <button type="button" disabled="true" style="font-weight: 700" class="btn btn-primary btn-lg btn-block">Beneficiary Feedback on VV</button>
                       
                        <div class="form-group col-md-2">
                            <br />
                            <asp:TextBox ID="txtF1" type="text" runat="server" class="form-control" placeholder="F1"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                             <br />
                            <asp:TextBox ID="txtF1BenifFBVV" type="text" runat="server" class="form-control" placeholder="Beneficiary feedback on VV"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                             <br />
                            <asp:TextBox type="txtF1FieldVisitImages" runat="server" class="form-control" ID="txtF1FieldVisitImages" placeholder="Field visit images"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                             <br />
                            <asp:TextBox ID="txtF1Remarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>

                        <div class="form-group col-md-2">
                             <br />
                            <asp:Button ID="txtF1Submit" type="button" Text="Submit" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnSubmit_Click"></asp:Button>
                        </div>

                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtF2" type="text" runat="server" class="form-control" placeholder="F2"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtF2BenifFBVV" type="text" runat="server" class="form-control" placeholder="Beneficiary feedback on VV"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox type="txtF2FieldVisitImages" runat="server" class="form-control" ID="txtF2FieldVisitImages" placeholder="Field visit images"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtF2Remarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:Button ID="txtF2Submit" type="button" Text="Submit" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnSubmit_Click"></asp:Button>
                        </div>

                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtF3" type="text" runat="server" class="form-control" placeholder="F3"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtF3BenifFBVV" type="text" runat="server" class="form-control" placeholder="Beneficiary feedback on VV"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox type="txtF3FieldVisitImages" runat="server" class="form-control" ID="txtF3FieldVisitImages" placeholder="Field visit images"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtF3Remarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                         <div class="form-group col-md-2">
                            <asp:Button ID="txtF3Submit" type="button" Text="Submit" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnSubmit_Click"></asp:Button>
                        </div>

                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtF4" type="text" runat="server" class="form-control" placeholder="F4"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtF4BenifFBVV" type="text" runat="server" class="form-control" placeholder="Beneficiary feedback on VV"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <asp:TextBox type="txtF4FieldVisitImages" runat="server" class="form-control" ID="txtF4FieldVisitImages" placeholder="Field visit images"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:TextBox ID="txtF4Remarks" type="text" runat="server" class="form-control" placeholder="Remarks"></asp:TextBox>
                        </div>
                         <div class="form-group col-md-2">
                            <asp:Button ID="txtF4Submit" type="button" Text="Submit" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnSubmit_Click"></asp:Button>
                        </div>
                    </div>
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
