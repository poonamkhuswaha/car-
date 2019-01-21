<%-- 
    Document   : contact_us
    Created on : Jan 16, 2017, 9:36:05 PM
    Author     : Sonu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <title>Contact Us</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="js/sweetalert.min.js"></script>
<link rel="stylesheet" href="css/sweetalert.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/bootstrap.js"></script>
  <script src="js/jquery-3.2.1.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
  <link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/mystyle.css" />
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />


<style>
/* Full-width input fields */
input[type=text], input[type=number], input[type=email], textarea[type="text"] {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    
}

.subbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}
</style>
<script>
function sub(){
swal(
  'Nice!',
  'Thank you for contact us.',
  'success'
)
}
</script>
<script>
function CheckIndianNumber(IndianNumber)
{
var IndNum = /^([0|\+[0-9]{1,5})?([7-9][0-9]{9})$/;
if(IndNum.test(IndianNumber))
       {
           swal(
  'Success!',
  'Valid Mobile Number',
  'success'
)
       }
       else
       {
           swal(
      'Error!',
      'Mobile number is not valid!',
      'error'
    )
       }
}
</script>
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
<span class="glyphicon glyphicon-envelope"></span>  buysalecar@gmail.com,    
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
        <li><a href="buy_product.jsp">Buy Products</a></li>
        <li><a href="sale_products.jsp">Sale Products</a></li>
        <li><a href="about_us.jsp">About Us</a></li>
        <li class="active"><a href="contact_us.jsp">Contact Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">

          <!-- User Name -->
          <li><a href="#"><span class="glyphicon glyphicon-user"></span> <b style="color:green">Welcome </b><b style="color:Orange"> <%= request.getSession().getAttribute("userdb") %></b></a></li>
    	

<!-- User Logut Button -->
	<li ><a href="loginform.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
<!--navigation section end -->
<center><h2 style="color:#239B56; font-family:Fixedsys;"><b>Contact Form </b></h2></center>

<div class="container" style="width:140%; margin-top:50px;">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Contact Form</div>
        <form action="contactusdb.jsp">
<div class="container" style="width:190%;"><br>
<label><b>Name : </b></label><br>
<input type="text" placeholder="Enter Name" requires name="name" /><br><br>
<label><b>Contact : </b></label><br>
<input type="text" placeholder="Enter Mobile Number" onchange="CheckIndianNumber(this.value)" required name="contact" maxlength="10" /><br><br>
<label><b>Email-Id : </b></label><br>
<input type="email" placeholder="Enter Email-id" required  name="email"/><br><br>
<label><b>Message : </b></label><br>
<textarea type="text" placeholder="Enter Message" required name="message"> </textarea><br><br> 
<button type="submit"  class="subbtn" onClick="sub()">Submit</button>

</div>
</form>
        <div class="panel-footer"><b style="color:green;">Feel Free To Contact Us.</b></div>
      </div>
    </div>
	<div class="col sm-12">
	<img src="images/rside_car.jpg" />
	</div>
		<img src="images/log.jpg" />
  </div>
    </div>
       
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
