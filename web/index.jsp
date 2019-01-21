<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.io.IOException" %>
<%@page import="java.io.*"%>

<!DOCTYPE html>
<html lang="en">
  <head>
      
      <c:import url="head-meta.jsp"/>
      <link rel="stylesheet" href="css/bootstrap.css" />
          <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    <title>Home Page</title>
     
 
  </head>
  <body ng-app="myApp">

<div class="container-fluid top_bar" id="homeID">
<div class="container"> 
<div class="row">
<div class="col-sm-3">
 <a href="https://www.facebook.com" class= "social_icon"> <i class="fa fa-facebook" style ="color:#fff; size:17px; font-size:17px"></i></a>
 <a href="https://www.twitter.com" class= "social_icon"> <i class="fa fa-twitter" style ="color:#fff; size:17px; font-size:17px"></i></a>
 <a href="https://www.youtube.com" class= "social_icon"> <i class="fa fa-youtube-play" style ="color:#fff; size:17px; font-size:17px"></i></a>
 <a href="https://www.gmail.com" class= "social_icon"> <i class="fa fa-google-plus" style ="color:#fff; size:17px; font-size:17px"></i></a>
</div>
<div class="col-sm-9 text-right contact_info">
<span class="glyphicon glyphicon-envelope"></span>  carliker@gmail.com,    
<span class="glyphicon glyphicon-earphone"></span>  +91-9560739311
</div>
</div>
</div>
</div> <!--end of header-->
<!--Navigation Section Start-->
	<div class="container">
        <div class=" col-sm-4 row">
            <div class="col-sm-4">
                <div class="row thumbnail text-center">
                 <img alt="" class="img-responsive" src="images/navback.png" width="100%">

                </div>
            </div>
		</div>
    </div>
			
<!--navigation section end -->

<nav class="navbar navbar-inverse" style="margin-bottom:0px;">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
<a class="navbar-brand" href="#" style="color:#17A589">Car Liker</a>
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Home</a></li>
        <li><a href="buy_product.jsp">Buy Products</a></li>
        <li><a href="sale_products.jsp">Sale Products</a></li>
        <li><a href="about_us.jsp">About Us</a></li>
        <li><a href="contact_us.jsp">Contact Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">

          <!-- User Nmae -->
          <li><a href="#"><span class="glyphicon glyphicon-user"></span> <b style="color:green">Welcome </b><b style="color:Orange"> <%= request.getSession().getAttribute("userdb") %></b></a></li>
    	

<!-- User Logout Button -->
	<li ><a href="loginform.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>


<!--navigation section end -->
<!--HOME PAGE-->  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
	        <li data-target="#myCarousel" data-slide-to="3"></li>
			      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="images/slide2.jpg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
          <h5>Welcome</h5>
        </div>
      </div>

	        <div class="item">
        <img src="images/slide1.jpg" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
          <h5>Thanks for visit our website</h5>
          
        </div>
      </div>
	  
	        <div class="item">
        <img src="images/slide3.jpg" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
          <h5>Feel free to contact us</h5>
        </div>
      </div>
	  
      <div class="item">
        <img src="images/slide4.jpg" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
          <h5>Get more details of car on BUY PRODUCTS</h5>
        </div>
      </div>
    
      <div class="item">
        <img src="images/slide5.jpg" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          <h5>Thanks a lot!!</h5>
        </div>
      </div>
  
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
<!--HOME PAGE END-->

<hr>
<div class="container"> 
<div class="row" >
<div class="col-sm-8">
<h1>Welcome to Sale & Buy Car</h1>
<p>At Scrubs, we know your time is valuable. Having to take your car in to get washed and detailed is typically a hassle. Even going out without your vehicle for a few hours can be inconvenient at the best of times. Not only do we offer some of the most competitive car detailing prices on the market, but a fully mobile service that comes to you, with all the necessary cleaning products and gear for a professional job that will leave your car shining.

Don't spend your valuable time having to work out transport options to drop off and pick up your car when you need it sparkling cleaned and polished. Simply arrange a scheduled time and we will come to your property. Do you commute to work? No problem either! We are more than happy to come to your office or workplace and detail your car while you get on with business. At the end of the day, drive away in your newly cleaned and polished car with no problems.

Over the years, we have heavily invested in quality equipment and have specially designed vehicles to cater for most mobile situations. Our minivan can fit into the smallest backyard and our 4x4 ute has inbuilt power and water with extra storage for any situation.

Never again spend needless time organising and coordinating to get your car to a location, Scrubs has ready professionals to fit into just about any space!

Professional service using industry leading products and equipment.

Car detailing is more than a service; it's an art form. This is why Scrubs only use passionate, experienced detailers to work on your vehicle. They have the required knowledge and specialised skill to get the ideal results for your car, no matter what package option you choose from us.</p>
</div>

<div class="col-sm-4">
<img src="images/backnavv.jpg" class="imghome" alt="" />
</div>
</div>
</div>

<hr>

<div class="container-fluid">
  <div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="false">
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
      <div class="row">
      <div class="col-sm-3">
        <img src="images/ccad.png" class="listH" alt="Los Angeles" style="width:100%;">
      </div>
        
        <div class="col-sm-3">
        <img src="images/cclr.jpg" class="listH" alt="Los Angeles" style="width:100%;">
        </div>
        
        <div class="col-sm-3">
        <img src="images/cch.png" class="listH" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
            <marquee direction="right"><h5 style="color:#F1C40F; margin-right: 100px;"><b></b></h5></marquee>
        </div>
        </div>
        
                <div class="col-sm-3">
        <img src="images/ccjag.png" class="listH" alt="Los Angeles" style="width:100%;">
        </div>
                
        </div>
      </div>
<div class="item">

                <div class="col-sm-3">
        <img src="images/ccmahi.png" class="listH" alt="Los Angeles" style="width:100%;">
        </div>
        
                <div class="col-sm-3">
        <img src="images/ccmer.png" alt="Los Angeles" class="listH" style="width:100%;">
        </div>

      <div class="row">
      <div class="col-sm-3">
        <img src="images/ccms.jpg" alt="Los Angeles" class="listH" style="width:100%;">
        </div>
        
        <div class="col-sm-3">
        <img src="images/cctt.png" alt="Los Angeles" class="listH" style="width:100%;">
        </div>
      </div>
</div><hr>

    <!-- Left and right controls -->

	<a class="left slide-control" href="#myCarousel1" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
    <a class="right slide-control" href="#myCarousel1" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
	
	
  </div>
</div>
</div>
<!--Footer section start -->
<footer class="container-fluid text-center" >
  <h4><i><b>Online b&s cars</b></i></h4>  
  <form class="form-inline"><b>Get deals:</b>
    <input type="email" class="form-control" size="50" placeholder="Enter your email-id" required>
    <button type="button" class="btn btn-danger lastbtn">Subscribe now</button>
  </form>
</footer>

<!--latest footer at bottom start -->
<div class="container-fluid footer" style="background-color:#145A32;">
<div class="container-fluid">
<div class="col-sm-4">
<img src="images/footpic.jpg" alt="" class="img-responsive" />
<p>At Scrubs, we know your time is valuable. Having to take your car in to get washed and detailed is typically a hassle. Even going out without your vehicle for a few hours can be inconvenient at the best of times....</p>

<p><a href="#" class="btn btn-danger" >Read More...</a></p>
</div>
<div class="col-sm-4 midfooter">
<h3>Quick Links</h3>
<ul>
<li><a href="index.jsp">&raquo; Home </a></li>
<li><a href="buy_product.jsp">&raquo; Buy Products</a></li>
<li><a href="about_us.jsp">&raquo; About Us</a></li>
<li><a href="contact_us.jsp">&raquo; Contact Us</a></li>
</ul>

</div>
<div class="col-sm-4"></div>
<h3>Contact Details</h3>
<p>Address : </strong> Chhattarpur new delhi(Delhi,India)(Delhi,India)</p>
<p>Email : </strong> Carliker@gmail.com</p>
<p>Phone : </strong> 9560739311</p>
<p style="text-align: right; margin-right: 60px;">Timing : </strong> 9:30am to 6:30pm</p>
</div>

</div>
      
<!--footer section end -->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
<script>
         

        var app=angular.module("myApp",['ngRoute']);
	app.config(function($routeProvider)
{
		$routeProvider
		.when('/',{
			templateUrl:'index.html',
			controller:'myrefreshcontroller'

		})
                        .otherwise(
                        {
                            controller:'nextcontroller'
                        });
	
});

	app.controller("myrefreshController",function($scope,$location)
	{
		
			$location.path('/')
			{
                            //$route.reload();
                           setTimeout(function() {
						location.reload();  // this method for refresh the page 
					}, 
					40000);
					
			
		}
	});
            app.controller("nextcontroller",function ($scope,$location)
            {
                            
                     setTimeout(function ()
                            {
                              // location.reload();
                                    },2000) 
                            
                });
       
    </script>
  </body>
</html>

