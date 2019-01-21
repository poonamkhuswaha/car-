<%-- 
    Document   : nav_all
    Created on : Jan 16, 2017, 8:09:08 PM
    Author     :  Sonu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
             <c:import url="head-meta.jsp"/>
        
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
	<div class="container">
        <div class=" col-sm-12 row">
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
      <ul class="nav navbar-nav">
        <li class="active"><a href="indexBook.html">Home</a></li>
        <li><a href="buy_product.html">Buy Products</a></li>
        <li><a href="about_us.html">About Us</a></li>
        <li><a href="contact_us.html">Contact Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">

        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
		<li><a href="#" onclick="document.getElementById('id01').style.display='block'"><span class="glyphicon glyphicon-user"></span> Login</a></li>
		
	

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="LogS.jsp">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="images/myprofile.png" alt="Login Pic" class="avatar">
    </div>

      <!-- Login Form Started -->
    <div class="container ">
        <label><b>Mobile Number</b></label><br>
      <input type="text" placeholder="Enter Mobile Number" name="mono" required><br><br>

      <label><b>Password</b></label><br>
      <input type="password" placeholder="Enter Password" name="passw" required><br><br>
        
      <button type="submit">Login</button><br><br>
	<a href="#" onclick="document.getElementById('id02').style.display='block',document.getElementById('id01').style.display='none' " ><b>Click for Registration</b></a><br><br>
      <input type="checkbox" checked="checked"> Remember me<br><br>
    </div>

    <div  style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>


	<li><a href="#" onclick="document.getElementById('id02').style.display='block'"><span class="glyphicon glyphicon-registration-mark"></span> Registration</a></li>
		<div id="id02" class="modal">
  
  <form class="modal-content animate" action="hello.jsp" method="POST">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="images/noprofileup.png" alt="Avatar" class="avatar">
    </div>

      <!-- Registration Form  started-->
    <div class="container">
        <label><b>Name</b></label><br>
    <input type="text" placeholder="Enter Name" name="name" required><br>
    
    <label><b>Mobile</b></label><br>
    <input type="text" placeholder="Enter Mobile Number" name="contact" required><br>
    
	<label><b>Email</b></label><br>
    <input type="text" placeholder="Enter Email" name="mail" required><br>

    <label><b>Password</b></label><br>
    <input type="password" placeholder="Enter Password" name="pass" required><br>

    <label><b>Repeat Password</b></label><br>
    <input type="password" placeholder="Repeat Password" name="repass" required><br>
    <input type="checkbox" checked="checked"> Remember me
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p><br>

    <div class="clearfix">
	      <button type="submit" class="signupbtn">Sign Up</button><br>
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
	</div>

  </form>
</div>
      </ul>
    </div>
  </div>
</nav>
<!--navigation section end -->
    </body>
</html>
