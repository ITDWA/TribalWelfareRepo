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
                        <div class="form-group col-md-3">
                            <asp:RadioButton ID="RadioButton1" runat="server" TextAlign="right" Text="&nbsp;General" GroupName="General"></asp:RadioButton>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:RadioButton ID="RadioButton2" runat="server" TextAlign="right" Text="&nbsp;Confidential" GroupName="General"></asp:RadioButton>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:RadioButton ID="RadioButton3" runat="server" TextAlign="right" Text="&nbsp;aspirations" GroupName="General"></asp:RadioButton>
                        </div>
                        <div class="form-group col-md-3">
                            <asp:RadioButton ID="RadioButton4" runat="server" TextAlign="right" Text="&nbsp;grievances" GroupName="General"></asp:RadioButton>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="TextBox2" runat="server" Font-Size="Small" type="text" class="form-control" placeholder="By VV/MC/DC/SC/CMT/Family head ID / Aadhaar number"></asp:TextBox>
                        </div>
                        <br />
                        <br />
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="ddlDepartment" type="text" runat="server" class="form-control" placeholder="Department"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="txtConsentPerson" type="text" runat="server" class="form-control" placeholder="Consent Person"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-6">
                            <textarea id="Remarks" rows="4" placeholder="Remarks" cols="40"></textarea>
                        </div>
                        <div class="form-group col-md-6">
                            <textarea id="Details" rows="4" cols="40" placeholder="Here automatically display their ID and details"></textarea>
                        </div>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <div class="row col-md-12 ">
                            <h4 style="font-weight: 800; color: #4D9DE0">Upload aspirations & grievances letter:</h4>
                        </div>
                        <div class="row col-md-4 ">
                            <asp:FileUpload ID="FileUpload1"
                                runat="server"></asp:FileUpload>
                        </div>
                        <div class="row col-md-3 ">
                            <asp:Button ID="UploadButton"
                                Text="Upload file"  Style="background-color: #4D9DE0;  padding: 1px 2px; color: black"
                                OnClick="UploadButton_Click"
                                runat="server" Height="29px"></asp:Button>
                            <asp:Label ID="UploadStatusLabel" Visible="false"
                                runat="server">
                            </asp:Label>
                        </div>
                        <div class="row col-md-3 ">
                          <%--  <asp:Label ID="UploadStatusLabel"
                                runat="server">
                            </asp:Label>--%>

                            <hr />

                            <asp:Label ID="LengthLabel"
                                runat="server">
                            </asp:Label>

                            <br />

                            <asp:Label ID="ContentsLabel"
                                runat="server">
                            </asp:Label>
                            <asp:PlaceHolder ID="PlaceHolder1"
                                runat="server"></asp:PlaceHolder>
                        </div>
                        <div class="col-md-2">
                            <button type="button" class="btn btn-primary btn-lg btn-block"  onclick='window.location = "/Default.aspx";'>Submit</button>
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

     ;
</style>
    <script>
$("#UpPDF").click(function () {
    $("#uploadfile").click();
        });

        $('#OpenImgUpload').click(function(){ $('#imgupload').trigger('click'); });

        window.onload = function () {
        var fileupload = document.getElementById("FileUpload1");
        var filePath = document.getElementById("spnFilePath");
        var button = document.getElementById("btnFileUpload");
        button.onclick = function () {
            fileupload.click();
        };
        fileupload.onchange = function () {
            var fileName = fileupload.value.split('\\')[fileupload.value.split('\\').length - 1];
            filePath.innerHTML = "<b>Selected File: </b>" + fileName;   
        };
    }
    </script>
</html>
