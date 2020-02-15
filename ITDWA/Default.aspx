<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ITDWA._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  

 <div class="row ">
   <div class="form-group">

  <div id="myCarousel" class="carousel slide col-lg-8" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" style="width:100%; height:20%">
      <div class="item active">
        <img src="\images\1.jpg" alt="ITDWA" style="width:100%;">
      </div>

      <div class="item">
        <img src="\images\2.jpg" alt="img" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="\images\3.jpg" alt="img" style="width:100%;">
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
       <br />
      
      <div class="container">
    <div class="row">
        <div class="col-md-12" style="margin-left:25%">
            <div class="panel panel-primary">
                <div class="panel-heading" id="accordion">
                    <span class="glyphicon glyphicon-comment"></span> Notifications
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
      <br>
      <br>
     <div class=" panel panel-default">
         <div class="container">
              <h2 style="font-weight:800">Training Materials</h2>
    <div class="row col-md-12 ">
    <table class="table table-striped custab">
    <thead>
 
           
        <tr>
            
           <asp:Button ID="UpPDF" class="btn-primary" style="margin-left:80%" Text="Upload Training Materials" runat="server" />
            <th class="text-left">Materials</th>
            <th class="text-center">Action</th>
        </tr>
        
    </thead>
            <tr>
               
                <td>Village Volunteers Technical Document</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Download</a> </td>
            </tr>
            <tr>
            
                <td>Family Registration Guidelines</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Download</a> </td>
            </tr>
            <tr>
             
                <td>Grama Sachivalayam Documents</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Download</a> </td>
            </tr>
    </table>
    </div>
   </div>
</div>
         
  <div class="container panel panel-default">
         <h2 style="font-weight:800">Training Videos</h2>
  <div class="row">
    
   
  </div>
  <div class='row'>
      
    <div class='col-md-12'>
      <div class="carousel slide media-carousel" id="media">
        <div class="carousel-inner">
          <div class="item  active">
            <div class="row">
              <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="\images\g1.jpg"></a>
              </div>          
              <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="\images\g3.jpg"></a>
              </div>
              <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="\images\g2.jpg"></a>
              </div> 
                <div class="col-md-3">
                <a class="thumbnail" href="#"><img alt="" src="\images\g4.jpg"></a>
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
      <div class="carousel slide media-carousel" id="media">
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
        <a data-slide="prev" href="#media" class="left carousel-control"><</a>
        <a data-slide="next" href="#media" class="right carousel-control">></a>
      </div>                          
    </div>
  </div>
</div>
       </div>
   
    <style>
       
        /* carousel */
.media-carousel 
{
  margin-bottom: 0;
  padding: 0 40px 30px 40px;
  margin-top: 30px;
}
/* Previous button  */
.media-carousel .carousel-control.left 
{
  left: -12px;
  background-image: none;
  background: none repeat scroll 0 0 #222222;
  border: 4px solid #FFFFFF;
  border-radius: 23px 23px 23px 23px;
  height: 40px;
  width : 40px;
  margin-top: 30px
}
/* Next button  */
.media-carousel .carousel-control.right 
{
  right: -12px !important;
  background-image: none;
  background: none repeat scroll 0 0 #222222;
  border: 4px solid #FFFFFF;
  border-radius: 23px 23px 23px 23px;
  height: 40px;
  width : 40px;
  margin-top: 30px
}
/* Changes the position of the indicators */
.media-carousel .carousel-indicators 
{
  right: 50%;
  top: auto;
  bottom: 0px;
  margin-right: -19px;
}
/* Changes the colour of the indicators */
.media-carousel .carousel-indicators li 
{
  background: #c0c0c0;
}
.media-carousel .carousel-indicators .active 
{
  background: #333333;
}
.media-carousel img
{
  width: 250px;
  height: 100px
}
/* End carousel */
.chat
{
    list-style: none;
    margin: 0;
    padding: 0;
}

.chat li
{
    margin-bottom: 10px;
    padding-bottom: 5px;
    border-bottom: 1px dotted #B3A9A9;
}

.chat li.left .chat-body
{
    margin-left: 60px;
}

.chat li.right .chat-body
{
    margin-right: 60px;
}


.chat li .chat-body p
{
    margin: 0;
    color: #777777;
}

.panel .slidedown .glyphicon, .chat .glyphicon
{
    margin-right: 5px;
}

.panel-body
{
    overflow-y: scroll;
    height: 250px;
}

::-webkit-scrollbar-track
{
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
    background-color: #F5F5F5;
}

::-webkit-scrollbar
{
    width: 12px;
    background-color: #F5F5F5;
}

::-webkit-scrollbar-thumb
{
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
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
    }


    </style>
    <script>
$(document).ready(function() {
  $('#media').carousel({
    pause: true,
    interval: false,
  });
});
    </script>
</asp:Content>
