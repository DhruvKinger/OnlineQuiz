﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>ONLINE QUIZ</title>
     <script>
 function validate()
 {
     
           if(document.getElementById("<%=txteml1.ClientID%>").value=="")
           {
                 alert("Please Enter Email");
                 document.getElementById("<%=txteml1.ClientID%>").focus();
               return false;
               window.history.back();
           }
      if(document.getElementById("<%=txteml1.ClientID%>").value!="")
      {
          var a = document.getElementById("<%=txteml1.ClientID%>").value;
          var regex = new RegExp("\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*");
          if (a.match(regex)) {
              return true;
          }else
          {
              alert("Please Enter Valied Email");
                 document.getElementById("<%=txteml1.ClientID%>").focus();
                 return false;
          }
                 
           }
      if (document.getElementById("<%=txtpwd1.ClientID%>").value=="")
           {
                 alert("Please Enter Password");
                 document.getElementById("<%=txtpwd1.ClientID%>").focus();
                 return false;
           }
    
 }
        function validate1()
 {
     
          <%-- if(document.getElementById("<%=txtnam.ClientID%>").value=="")
           {
                 alert("Please Enter Name");
                 document.getElementById("<%=txtnam.ClientID%>").focus();
                 return false;
           }--%>
      if (document.getElementById("<%=txteml.ClientID%>").value=="")
           {
                 alert("Please Enter Email");
                 document.getElementById("<%=txteml.ClientID%>").focus();
                 return false;
      }
             if(document.getElementById("<%=txteml.ClientID%>").value!="")
      {
          var a = document.getElementById("<%=txteml.ClientID%>").value;
          var regex = new RegExp("\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*");
          if (a.match(regex)) {
              return true;
          }else
          {
              alert("Please Enter Valied Email");
                 document.getElementById("<%=txteml.ClientID%>").focus();
                 return false;
          }
                 
           }
             if (document.getElementById("<%=txtpwd.ClientID%>").value=="")
           {
                 alert("Please Enter Password");
                 document.getElementById("<%=txtpwd.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=txtcnfpwd.ClientID%>").value=="")
           {
                 alert("Please Enter Confirm-Password");
                 document.getElementById("<%=txtcnfpwd.ClientID%>").focus();
                 return false;
             }
            if (document.getElementById("<%=txtcnfpwd.ClientID%>").value!="")
            {
                var a = document.getElementById("<%=txtpwd.ClientID%>").value;
                var b = document.getElementById("<%=txtcnfpwd.ClientID%>").value;
                if (a != b)
                {
                 alert("Password And Confirm-Password Must Match");
                 document.getElementById("<%=txtcnfpwd.ClientID%>").focus();
                 return false;
                }
                 
           }
    
        }
    </script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</head>
<body>
    <form name="frm1" runat="server">

    
<div class="mainNew">
	<div class="MainHeader">
		<nav class="navbar navbar-inverse">
			<div class="container">
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>                        
				  </button>
				   <a class="navbar-brand" href="index.aspx">ONLINE QUIZ</a>
				</div>
				<div class="collapse navbar-collapse navbar-right" id="myNavbar">
				  <ul class="nav navbar-nav">
					<li class="active"><a href="index.aspx">Home</a></li>
					<li><a href="frmstrtst.aspx">ONLINE QUIZ</a></li>
				  </ul>
				  <ul class="nav navbar-nav navbar-right">
					<li class="modalClas" data-toggle="modal" data-target="#myModal"><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li class="modalClas" data-toggle="modal" data-target="#myModalLogin"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				  </ul>
				</div>
			</div>
		</nav>
	</div>
    </div>
	<div class="content">
		<div class="sliderSection">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
				  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				  <li data-target="#myCarousel" data-slide-to="1"></li>
				  <li data-target="#myCarousel" data-slide-to="2"></li>
				  <li data-target="#myCarousel" data-slide-to="3"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">

				  <div class="item active">
				<img src="images/slide1.jpg" alt="Flower" width="460" height="345">
					<div class="carousel-caption">
					  <h3>Quiz</h3>
					  <p>Thanks to the training I have received here, now I feel capable enough to face any challenge.</p>
					  <a class="btn btnSignUp" href="#" data-toggle="modal" data-target="#myModal">Sign Up Free</a>
					</div>
				  </div>

				  <div class="item">
					<img src="images/slide4.jpg" alt="Flower" width="460" height="345">
					<div class="carousel-caption">
					  <h3>QUIZ</h3>
					  <p>“Apart from giving me technical skills, it has instilled self-belief in me, which I think is equally important at the workplace.”</p>
					  <a class="btn btnSignUp" href="#" data-toggle="modal" data-target="#myModal">Sign Up Free</a>
					</div>
				  </div>
				
				  <div class="item">
					<img src="images/slide2.jpg" alt="Flower" width="460" height="345">
					<div class="carousel-caption">
					  <h3>QUIZ</h3>
					  < <p>Thanks to the training I have received here, now I feel capable enough to now I feel capable enough to face any challenge.</p>
					  <a class="btn btnSignUp" href="#" data-toggle="modal" data-target="#myModal">Sign Up Free</a>
					</div>
				  </div>

				  <div class="item">
					<img src="images/slide3.jpg" alt="Flower" width="460" height="345">
					<div class="carousel-caption">
					  <h3>QUIZ</h3>
					  <p>“Apart from giving me technical skills, it has instilled self-belief in me, which I think is equally important at the workplace.”</p>
					  <a class="btn btnSignUp" href="#" data-toggle="modal" data-target="#myModal">Sign Up Free</a>
					</div>
				  </div>
			  
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				  <span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				  <span class="sr-only">Next</span>
				</a>
			</div>
		</div> <!-- End Slider Section -->
		<div id="aboutId" class="section1 about">
			<div class="blueBack">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 text-center">
							<h1>About Organisation</h1>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
                <%--<asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server"></asp:ContentPlaceHolder>--%>
			</div>
		</div>
		
		
	    <div id="map" class = "custm_map"></div>
		
		<footer class="section footerSection">
			<div class="container">
				<p>&copy;2018 QUIZ. All Rights Reserved.</p>
					<ul>
					<li><a href="http://www.facebook.com/" class="facebook" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="http://www.twitter.com/" class="twitter" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="https://plus.google.com/" class="google" target="_blank"><i class="fa fa-google" aria-hidden="true"></i></a></li>
					<li><a href="http://www.linkedin.com/" class="linkedin" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
					<li><a href="http://www.instagram.com/" class="instagram" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					<li><a href="https://www.youtube.com/" class="youtube" target="_blank"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
					<li><a href="http://www.vimeo.com/" class="vimeo" target="_blank"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
					<li><a href="http://www.tumblr.com/" class="tumblr" target="_blank"><i class="fa fa-tumblr" aria-hidden="true"></i></a></li>
					<li><a href="http://www.dribbble.com/" class="dribbble" target="_blank"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
					<li><a href="https://www.behance.net/" class="behance" target="_blank"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
					<li><a href="https://www.flickr.com/" class="flickr" target="_blank"><i class="fa fa-flickr" aria-hidden="true"></i></a></li>
					</ul>
			</div>
		</footer>
  <!-- modal   -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
		  <div class="modal-content">
			<div class="modal-header">
			  <button type="button" class="close" data-dismiss="modal">&times;</button>
				
					<div class="form-group groupPosition">
						<h1>Sign Up</h1>
						<i class="fa fa-pencil iconPosition"></i>
					</div>
					<div class="paddingModal">
						
						<div class="form-group">
							<label for="exampleInputEmail1">Email</label>
                            <asp:TextBox ID="txteml" CssClass="form-control"  runat="server"></asp:TextBox>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label>
                            <asp:TextBox ID="txtpwd" CssClass="form-control" runat="server" TextMode="Password" ></asp:TextBox>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Conform Password</label>
                            <asp:TextBox ID="txtcnfpwd" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
						</div>
						<div class="form-group">
							
                            <asp:Button ID="Button1" CssClass="btn btn-default" OnClientClick="javascript:return validate1()"  runat="server" Text="Sign up" OnClick="Button1_Click" />
                            						</div>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" ></asp:Label>
                            </div>
					</div>
				
			</div>
		  </div>
		</div>
	</div>
	<div class="modal fade" id="myModalLogin" role="dialog">
		<div class="modal-dialog">
		  <div class="modal-content">
			<div class="modal-header">
			  <button type="button" class="close" data-dismiss="modal">&times;</button>
				
					<div class="form-group groupPosition">
						<h1>Login</h1>
						<i class="fa fa-user iconPosition"></i>
					</div>
					<div class="paddingModal">
						<div class="form-group">
						<label for="exampleInputEmail1">Email</label>
                            <asp:TextBox ID="txteml1" CssClass="form-control" runat="server"></asp:TextBox>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label>
                            <asp:TextBox ID="txtpwd1" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
						</div>
						<div class="form-group">
							
                            <asp:Button ID="Button2" CssClass="btn btn-default" OnClientClick="javascript:return validate()" runat="server" Text="Login" OnClick="Button2_Click" />
						</div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            </div>
					  
					</div>
				
			</div>
		  </div>
		</div>
	</div>
	<!-- modal   -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
<script src="js/custom.js"></script>
</div>
    </form>
</body>
</html>

