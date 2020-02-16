<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ITDWA._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div id="myCarousel" class="carousel slide col-lg-8" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" style="width: 100%; height: 20%">
            <div class="item active">
                <img src="\images\1.jpg" alt="ITDWA" style="width: 100%;">
            </div>

            <div class="item">
                <img src="\images\2.jpg" alt="img" style="width: 100%;">
            </div>

            <div class="item">
                <img src="\images\3.jpg" alt="img" style="width: 100%;">
            </div>
            <%--<div class="item">
        <img src="\images\4.jpg" alt="img" style="width:100%;">
      </div>--%>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="row ">
        <div class="form-group">



            <div class="container">
                <div class="row">
                    <div class="col-md-12" style="margin-left: 0%">
                        <div class="panel panel-primary">
                            <div class="panel-heading" id="accordion">
                                <span class="glyphicon glyphicon-comment"></span>Notifications
                    <div class="btn-group pull-right">
                        <a type="button" class="btn btn-default btn-xs" data-toggle="" data-parent="#accordion" href="#collapseOne">
                            <span class="glyphicon glyphicon-chevron-down"></span>
                        </a>
                    </div>
                            </div>
                            <div class="panel-collapse " id="collapseOne">
                                <div class="panel-body">
                                    <ul class="chat">
                                        <li class="left clearfix"><span class="chat-img pull-left">
                                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
                                        </span>
                                            <div class="chat-body clearfix">
                                                <div class="header">
                                                    <strong class="primary-font">Village Volunteer 1</strong> <small class="pull-right text-muted">
                                                        <span class="glyphicon glyphicon-time"></span>12 mins ago</small>
                                                </div>
                                                <p>
                                                    Went to field work and added the family members registrations Successfully!
                                                </p>
                                            </div>
                                        </li>
                                        <li class="right clearfix"><span class="chat-img pull-right">
                                            <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
                                        </span>
                                            <div class="chat-body clearfix">
                                                <div class="header">
                                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>13 mins ago</small>
                                                    <strong class="pull-right primary-font">Village Volunteer 2</strong>
                                                </div>
                                                <p>
                                                    Today i am in leave please assign work to someone.
                                                </p>
                                            </div>
                                        </li>


                                    </ul>
                                </div>
                                <div class="panel-footer">
                                    <div class="input-group">
                                        <input id="btn-input" type="text" class="form-control input-sm" placeholder="Type your message here..." />
                                        <span class="input-group-btn">
                                            <button class="btn btn-warning " id="btn-chat">
                                                Send</button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>

        <br>
        <br>
        <div class=" panel panel-default">
            <div class="container">
                <h2 style="font-weight: 800">Training Materials</h2>
                <div class="row col-md-12 ">
                    <table class="table table-striped custab">
                        <thead>


                            <tr>
<%--                                <asp:Button ID="UpPDF" class="btn btn-primary btn-lg btn-block" OnClick="btnSubmit_Click" Style="margin-left: 80%" Text="Upload Training Materials" runat="server"></asp:Button>
                                <div class="wrapper visibility: hidden">
     <input type="file" id="uploadfile" />
                                </div>--%>
                               <%-- <input type="file" id="imgupload" style="display:none"/> 
<button class="btn btn-primary btn-lg btn-block"  id="OpenImgUpload" Style="margin-left: 80%">Upload Training Materials</button>
                                <input type="button" id="btnFileUpload" value="Select File" />
<span id="spnFilePath"></span>
<input type="file" id="FileUpload1" style="display: none" />--%>
                                <%--<asp:FileUpload ID="FileUpload1" runat="server" />--%>
                                 <div>
        <h4 style="font-weight: 800;color:#4D9DE0">Select a file to upload Training Materials:</h4>
       <div class="row col-md-5 ">
        <asp:FileUpload id="FileUpload1"
           runat="server">
        </asp:FileUpload> 
           </div>
                                     <div class="row col-md-3 ">
        <asp:Button id="UploadButton" 
            Text="Upload file" style="background-color:#4D9DE0;color:black"
            OnClick="UploadButton_Click"
            runat="server">
        </asp:Button>     
                                         </div>
                                         <div class="row col-md-5 ">
        <asp:Label id="UploadStatusLabel"
           runat="server">
        </asp:Label>  
            
        <hr />
        
        <asp:Label id="LengthLabel"
           runat="server">
        </asp:Label>  
        
        <br />
       
        <asp:Label id="ContentsLabel"
           runat="server">
        </asp:Label>  
        <asp:PlaceHolder id="PlaceHolder1"
            runat="server">
        </asp:PlaceHolder>   
                                         </div>
    </div>
                                <th class="text-left">Materials</th>
                                <th class="text-center">Action</th>
                            </tr>

                        </thead>
                        <tr>

                            <td>Village Volunteers Technical Document</td>
                            <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span>Download</a> </td>
                        </tr>
                        <tr>

                            <td>Family Registration Guidelines</td>
                            <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span>Download</a> </td>
                        </tr>
                        <tr>

                            <td>Grama Sachivalayam Documents</td>
                            <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span>Download</a> </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

        <div class="container panel panel-default">
            <h2 style="font-weight: 800">Training Videos</h2>
            <div class="row">
            </div>
            <div class='row'>

                <div class='col-md-12'>
                    <div class="carousel slide media-carousel" id="media">
                        <div class="carousel-inner">
                            <div class="item  active">
                                <div class="row">
                                    <div class="col-md-3">
                                        <a class="thumbnail" href="#">
                                            <img alt="" src="\images\g1.jpg"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a class="thumbnail" href="#">
                                            <img alt="" src="\images\g3.jpg"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a class="thumbnail" href="#">
                                            <img alt="" src="\images\g2.jpg"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a class="thumbnail" href="#">
                                            <img alt="" src="\images\g4.jpg"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-md-3">
                                        <a class="thumbnail" href="#">
                                            <img alt="" src="http://placehold.it/150x150"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a class="thumbnail" href="#">
                                            <img alt="" src="http://placehold.it/150x150"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a class="thumbnail" href="#">
                                            <img alt="" src="http://placehold.it/150x150"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a class="thumbnail" href="#">
                                            <img alt="" src="http://placehold.it/150x150"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-md-3">
                                        <a class="thumbnail" href="#">
                                            <img alt="" src="http://placehold.it/150x150"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a class="thumbnail" href="#">
                                            <img alt="" src="http://placehold.it/150x150"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a class="thumbnail" href="#">
                                            <img alt="" src="http://placehold.it/150x150"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a class="thumbnail" href="#">
                                            <img alt="" src="http://placehold.it/150x150"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a data-slide="prev" href="#media" class="left carousel-control"><</a>
                        <a data-slide="next" href="#media" class="right carousel-control">></a>
                    </div>
                </div>
            </div>
        </div>

    <br>
    <div class="container panel panel-default">
         <h2 style="font-weight:800">Gallery</h2>
  <div class="row">
    
   
  </div>
  <div class='row'>
      
    <div class='col-md-12'>
      <div class="carousel slide media-carousel" id="media1">
        <div class="carousel-inner">
          <div class="item  active">
            <div class="row">
              <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="\images\g5.jpg"></a>
              </div>          
              <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="\images\g6.jpg"></a>
              </div>
              <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="\images\g7.jpg"></a>
              </div> 
                <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="\images\g8.jpg"></a>
              </div> 
            </div>
          </div>
          <div class="item">
            <div class="row">
              <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="http://placehold.it/150x150"></a>
              </div>          
              <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="http://placehold.it/150x150"></a>
              </div>
              <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="http://placehold.it/150x150"></a>
              </div> 
                <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="http://placehold.it/150x150"></a>
              </div> 
            </div>
          </div>
          <div class="item">
            <div class="row">
              <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="http://placehold.it/150x150"></a>
              </div>          
              <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="http://placehold.it/150x150"></a>
              </div>
              <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="http://placehold.it/150x150"></a>
              </div> 
                 <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="http://placehold.it/150x150"></a>
              </div>
            </div>
          </div>
        </div>
        <a data-slide="prev" href="#media1" class="left carousel-control"><</a>
        <a data-slide="next" href="#media1" class="right carousel-control">></a>
      </div>                          
    </div>
  </div>
</div>
       </div>
   
    <style>
        /* carousel */
        .media-carousel {
            margin-bottom: 0;
            padding: 0 40p
            px 40x
              m
            n-top: 30px
            }
        *
            revious button  */
            .media-carousel .carousel-control.left 
                eft: - 2px;
                  backgroun
                age: none;
  bac groun
                one repeat crol 0 0 #22222;
                 order: 4
                olid #F FFF;
  order-ra
                : 23px 23px 23 x 23x;
                 heiht: 4
                
  wid h : 4
                
  mr in-to
                0px
}
/* ext 
            t
        n  */
.media-carousel .carousel-control.rig

         
{
  right: 12px !important;
  k
            nd-ima e:  n
            
  ackgr
            : none epea
            roll 0 0 #222 22;
             o
        er: 4px solid #FFFFFF;
  border-radius: 2

        x  23px 23px 23p;
  height: 40px;
         w h
            0px;
  mar in-top: 
        p

        
        }
/* Changes he position of the idicator /
            edia-carous l .carou
        l

        ndicators 
{
         ri t
            %;
  op:  au
            
  bott m: 0p
        
         margin-right: -19 ;
}
        *
            es the colo r of 
            dicator  *
            dia-caro se
        .

        usel-nd a
            i 
{
  backg ound:
            c0;
}
.media- arou
            arousel-indica ors .activ 
{
  c

        und: 333333;
        
        }
.media a
             img
{
  w dth: 
        0

        
          heght: 100x
}
/* E  
            el */
.chat
            {
            
  l

        yle: on;
    mari  
              paddi g:
            

.c at li
            {
         
        argin-ottom: 10p;
    padd ng-botom: 5px;
         er-bottom: 1p  dot
        d

        A9A9;
}

        c
            .left .chat body
            {
            margin- eft: 6
        x

        
        
.chat li.right .chat- d
                margin-right: 6 px;
            
            
            
            
.hat li .chat-bod
            
    margin: 0;
                colo
         
        777;
}

.panel . i
             .glyp icon,
             .glyphicon
{
               margin
        i

         5px;
}

.panel-body
        
            erflow-y: scroll;
            
               hegt 25px;
            }
            
            
            
            ::-we
            crollbar-track
            {
    e

        it-box- s
             inset  0 px rga(0,0
            );
    ackg
            color: F55F
            

::-webki -scollar
            {
  h: 12px;
               bac
        d

        olor: #F5F5F5 ;
            
::-webkit- crolba-thmb
{
    -
            -box-shadow  inse
        6

        0,.3);
    background-color: #555;
}
.custab{
    border: 1px solid #ccc;
    padding: 5px;
    margin: 5% 0;
    box-shadow: 3px 3px 2px #ccc;
    transition: 0.5s;
    }
.custab:hover{
    box-shadow: 3px 3px 0px transparent;
    transition: 0.5s;
    };;;;;;;;;;
               </style>
    <script>
        $(document).ready(function () {
            $('#media').carousel({
                pause: true,
                interval: false,
            });
        });

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
    };
    </script>
</asp:Content>
