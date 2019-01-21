<%-- 
    Document   : usale
    Created on : Jan 12, 2017, 7:59:19 PM
    Author     : Sonu
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Your Sale Details</title>
<!-- Custom Theme files -->
<link href="css/salestyle.css" rel="stylesheet" type="text/css" media="all"/>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Colorful Pricing Tables Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/bootstrap.js"></script>
  <script src="js/jquery-3.2.1.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
  <link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/mystyle.css" />
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />
<!-- //for-mobile-apps -->
<!--google fonts-->
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>
    </head>
    <body>
        <!--header start here-->
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
</div>
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
        <li class="active"><a href="sale_products.jsp">Sale Products</a></li>
        <li><a href="about_us.jsp">About Us</a></li>
        <li><a href="contact_us.jsp">Contact Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">

    <!-- Admin Login Button -->
    <li><a href="#" onclick="document.getElementById('id03').style.display='block'"><span class="glyphicon glyphicon-user"></span> Admin Login</a></li>
    
          <!-- User Login Button -->
    <li><a href="#" onclick="document.getElementById('id01').style.display='block'"><span class="glyphicon glyphicon-user"></span> Login</a></li>
    	
<!-- User Login Form Started -->
<div id="id01" class="modal">
  
  <form class="modal-content animate" name="ulogin">
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
        
      <button type="submit" onclick="log(this.form)">Login</button><br><br>
	<a href="#" onclick="document.getElementById('id02').style.display='block',document.getElementById('id01').style.display='none' " ><b>Click for Registration</b></a><br><br>
      <input type="checkbox" checked="checked"> Remember me<br><br>
    </div>

    <div  style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
 
<!--User Login Form End -->

<!-- Admin Login Form Started -->
<div id="id03" class="modal">

<center>
    <form name="login">
<table bgcolor="black" cellpadding="12" border="10" style="border-color:blue">
<tr><td colspan="2"><center><h4><b style="color:red">Admin Login</b></h4></center></td></tr>
<tr><td><b style="color:darkorange"> Email-ID:</b></td>

    <td><input name="cont" class="form-control" type="text"></td></tr>
<tr><td><b style="color:darkorange"> Password:</b></td>
    <td><input name="apass" class="form-control" type="password"></td></tr><br>
<tr>
    <td colspan="2"><center><input class="btn btn-primary" type="button" value="Login" onClick="al(this.form)"></center></td>
        </tr><br>
</table>
</form>
</center>
</div>
<!-- Admin Login Form End -->

<!-- User Registration Button -->
	<li><a href="#" onclick="document.getElementById('id02').style.display='block'"><span class="glyphicon glyphicon-registration-mark"></span> Registration</a></li>
		<div id="id02" class="modal">
  
                    
<!-- User Registration Form Started -->                    
   <form class="modal-content animate" action="RegisSuccess.jsp"  method="POST" onsubmit="return checkForm(this)";>
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="images/noprofileup.png" alt="Avatar" class="avatar">
    </div>
    <div class="container">
        <label><b>Name</b></label><br>
    <input type="text" placeholder="Enter Name" name="name" required><br>
    
    <label><b>Mobile</b></label><br>
    <input type="number" placeholder="Enter Mobile Number" name="contact" required maxlength="10"><br>
    
	<label><b>Email</b></label><br>
    <input type="email" placeholder="Enter Email" name="mail" required><br>

    <label><b>Password</b></label><br>
    <input type="password" placeholder="Enter Password" name="pass" required id="pass" ><br>

    <label><b>Repeat Password</b></label><br>
    <input type="password" placeholder="Repeat Password" name="repass" id="repass" required ><br>
    <input type="checkbox" checked="checked"> Remember me
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p><br>

    <div class="clearfix">
        <button type="submit" class="signupbtn">Sign Up</button><br><br>
              <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
        <a href="#" onclick="document.getElementById('id01').style.display='block',document.getElementById('id02').style.display='none' " ><b class="alrbtn">Already Register? Click for Login</b></a><br><br>      
              
    </div>
	</div>
  </form>
</div>
      </ul>
    </div>
  </div>
</nav>

    <jsp:useBean id="usBean" scope="session" class="org.vicky.SpCarDetails" />
        
        <jsp:setProperty name="usBean" property="cry" />
        <jsp:setProperty name="usBean" property="cb" />
        <jsp:setProperty name="usBean" property="cv" />
        <jsp:setProperty name="usBean" property="ckd" />
        <jsp:setProperty name="usBean" property="cc" />
        <jsp:setProperty name="usBean" property="co" />
        <jsp:setProperty name="usBean" property="ccity" />
        <jsp:setProperty name="usBean" property="cpin" />
        <jsp:setProperty name="usBean" property="xe" />
        <jsp:setProperty name="usBean" property="naam" />
        <jsp:setProperty name="usBean" property="gmail" />
        <jsp:setProperty name="usBean" property="mobile" />
        
        <script>
            var a=usBean.store();
            if(a === 1){
            alert("Registration Successfully");
        }else {
            alert("Registration Failed");
        }
            
        </script>
        <%        
        int a=usBean.store();
        if(a==1){
            //out.print("Value Stored");
        }else {
            //out.print("Value not Stored");
        }
        %>
        <div class="priceing-table w3l">
	    		<div class="price-grid" style="margin-left:50px; margin-top:40px;">
	    			<div class="price-block agile">
		    			<div class="price-gd-top pric-clr2">
		    				<h4>Sale Details</h4>
		    				<h3>Car Details</h3>
		    				<h5>for USER</h5>
		    			</div>
		    			<div class="price-gd-bottom">
		    				<div class="price-list"> 
                                                    <table align="center" cellpadding="1" cellspacing="2" border="1" style="margin-left: 100px; text-align: left" >        
                                                    
                                                    <tr bgcolor="#DEB887" style="color:white">
                                                        <td><b>Car Details</b></td>
                                                    <td>Data </td>
                                                    </tr>
                                                    <td><b>Car Registration Year</b></td>
                                                    <td> <jsp:getProperty name="usBean" property="cry" /></td>
                                                    </tr>
                                                    <tr><td><b>Car Brand/Model</b></td>
                                                    <td><jsp:getProperty name="usBean" property="cb" /></td>
                                                    </tr>
                                                    <tr><td><b>Car Varient</b></td>
                                                    <td><jsp:getProperty name="usBean" property="cv" /> </td>
                                                    </tr>
                                                    
                                                    <tr><td><b>Kilometer Driven</b></td>
                                                        <td><jsp:getProperty name="usBean" property="ckd" /></td>
                                                    </tr>
                                                    
                                                    <tr><td><b>Car Color</b></td>
                                                         <td><jsp:getProperty name="usBean" property="cc" /> </td>
                                                    </tr>
                                                    <tr><td><b>Car Ownership</b></td>
                                                    <td> <jsp:getProperty name="usBean" property="co" /></td>
                                                    </tr>
                                                    
                                                    <tr><td><b>City</b></td>
                                                        <td><jsp:getProperty name="usBean" property="ccity" /> </td>
                                                    </tr>
                                                    
                                                    <tr><td><b>Pincode</b></td>
                                                <td><jsp:getProperty name="usBean" property="cpin" /></td>
                                                    </tr>
                                                    
                                                    <tr><td><b>Expected Price</b></td>
                                                        <td><jsp:getProperty name="usBean" property="xe" /></td>
                                                        </tr>
                                                        <tr><td><b>Seller Name</b></td>
                                                         <td><jsp:getProperty name="usBean" property="naam" /></td>
                                                        </tr>
                                                        <tr><td><b>Seller Mail</b></td>
                                                            <td><jsp:getProperty name="usBean" property="gmail" /></td>
                                                        </tr>
                                                        <tr><td><b>Seller Contact</b></td>
                                                            <td><jsp:getProperty name="usBean" property="mobile" /> </td>
                                                        </tr>
                                                    
</table>
                                                        </div>
                                        </div>
                                
                        
		    		    <div class="price-selet pric-sclr2">
		    			   	 <a class="btn" href="#small-dialog">Thank you !</a>
                                                 <a class="btn" href="sale_products.jsp"><strong>Click here for Sale Car</strong></a>
		    			</div>
                                        </div>
                                        </div>
                                                        </div>
		    		
	    	
             <div class="clear"> </div>
    </body>
</html>
