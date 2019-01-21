<%-- 
    Document   : buy_product
    Created on : Jan 16, 2017, 8:01:17 PM
    Author     : Sonu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <c:import url="head-meta.jsp"/>
     
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquerys.js"></script>
  <script src="js/myscript.js"></script>
  
  <link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/mystyle.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />
        <title>Buy Product</title>
    </head>
    <body>
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
        <li><a href="index.jsp">Home</a></li>
        <li class="active"><a href="buy_product.jsp">Buy Products</a></li>
        <li><a href="sale_products.jsp">Sale Products</a></li>
        <li><a href="about_us.jsp">About Us</a></li>
        <li><a href="contact_us.jsp">Contact Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">

          <!-- User Nmae -->
          <li><a href="#"><span class="glyphicon glyphicon-user"></span> <b style="color:green">Welcome </b><b style="color:Orange"> <%= request.getSession().getAttribute("userdb") %></b></a></li>
    	

<!-- User Registration Button -->
	<li ><a href="loginform.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
<!--navigation section end -->

<!--Product PAGE Searching Bar-->  
<div class="container"> 
<div row="row">
<form>
  <input type="text" name="search" id="myInput" onkeyup="myFunction()" placeholder="Search Car..."> <img src="images/searchcar.jpg" width="15%"/>
</form>
</div>
</div>

<hr><br>
<!--Product PAGE Searching Bar END-->
<!--PRODUCT PAGE -->
<!--products section start-->
<div class="container" id="myUL">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading" >Nano Car</div>
        <a href="nano_inner.jsp"><div class="panel-body"><img src="images/nano_car.jpg" class="img-responsive" style="width:100%" alt="Image"></div></a>
        <div class="panel-footer"><b style="color:red;">Buy at  </b><img src="images/ic.png"/><b>2.25 - 3.22 Lakhs</b></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Swift-Desire Car</div>
        <a href="swift_inner.jsp"><div class="panel-body"><img src="images/swift_car.jpg" class="img-responsive" style="width:100%" alt="Image"></div></a>
        <div class="panel-footer"><b style="color:red;">Buy at  </b><img src="images/ic.png"/><b>5.27 - 8.58 Lakhs</b></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Honda City Car</div>
        <a href="honda_inner.jsp"><div class="panel-body"><img src="images/city_car.jpg" class="img-responsive" style="width:100%" alt="Image"></div></a>
        <div class="panel-footer"><b style="color:red;">Buy at  </b><img src="images/ic.png"/><b>12.85 - 13.53 Lakhs</b></div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Baleno<i>RS</i> Car</div>
        <a href="baleno_inner.jsp"><div class="panel-body"><img src="images/baleno_car.jpg" class="img-responsive" style="width:100%" alt="Image"></div></a>
        <div class="panel-footer"><b style="color:red;">Buy at  </b><img src="images/ic.png"/><b>5.99 - 8.69 Lakhs</b></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Audi Car</div>
        <a href="audi_inner.jsp"><div class="panel-body"><img src="images/audi_car.jpg" class="img-responsive" style="width:100%" alt="Image"></div></a>
        <div class="panel-footer"><b style="color:red;">Buy at  </b><img src="images/ic.png"/><b>30.0 - 39.0 Lakhs</b></div>
      </div>
    </div>
	<div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Scorepio Car</div>
        <a href="scorepio_inner.jsp"><div class="panel-body"><img src="images/score_car.jpg" class="img-responsive" style="width:100%" alt="Image"></div></a>
        <div class="panel-footer" ><b style="color:red;">Buy at  </b><img src="images/ic.png"/><b>9.17 - 10.16 Lakhs</b></div>
      </div>
    </div>
	<div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Pajero Car</div>
        <a href="pajero_inner.jsp"><div class="panel-body"><img src="images/jag_old.jpg" class="img-responsive" style="width:100%" alt="Image"></div></a>
        <div class="panel-footer"><b style="color:red;">Buy at  </b><img src="images/ic.png"/><b>28.1 - 28.59 Lakhs</b></div>
      </div>
    </div>
<div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Alto<i>K-10</i> Car</div>
        <a href="alto_inner.jsp"><div class="panel-body"><img src="images/alto_car.jpg" class="img-responsive" style="width:100%" alt="Image"></div></a>
        <div class="panel-footer"><b style="color:red;">Buy at  </b><img src="images/ic.png"/><b>3.8 - 4.13 Lakhs</b></div>
      </div>
    </div><div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Innova Car</div>
        <a href="innova_inner.jsp"><div class="panel-body"><img src="images/innova_car.png" class="img-responsive" style="width:100%" alt="Image"></div></a>
        <div class="panel-footer"><b style="color:red;">Buy at  </b><img src="images/ic.png"/><b>17.99 - 21.19 Lakhs</b></div>
      </div>
    </div>
	</div>
</div><br><br>
<!--products section end -->

<!--Footer section start -->
<footer class="container-fluid text-center">
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
<!--latest footer at bottom ending -->
<!--footer section end -->
    </body>
</html>
