<%-- 
    Document   : loginform
    Created on : Jan 21, 2017, 12:48:42 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
        <meta name="viewsport" content="width=device-width, initial-scale=1.0"> 
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

<script src="js/sweetalert.min.js"></script>
<link rel="stylesheet" href="css/sweetalert.css">

<style>
    input[type=email],input[type=number]{
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
</style>

<style>
    
    @-webkit-keyframes swinging{
    0%{-webkit-transform: rotate(10deg);}
    50%{-webkit-transform: rotate(-5deg)}
    100%{-webkit-transform: rotate(10deg);}
}
 
@keyframes swinging{
    0%{transform: rotate(10deg);}
    50%{transform: rotate(-5deg)}
    100%{transform: rotate(10deg);}
}
 
#swingimage{
    -webkit-transform-origin: 50% 0;
    transform-origin: 50% 0;
    -webkit-animation: swinging 3.5s ease-in-out forwards infinite;
    animation: swinging 3.5s ease-in-out forwards infinite;
}
</style>

<script type="text/javascript">

  function checkForm(form)
  {
    if(form.pass.value != "" && form.pass.value == form.repass.value) {
      if(form.pass.value.length < 6) {
        swal(
      'Error!',
      'Password must contain at least six characters!',
      'error'
    )
        form.pass.focus();
        return false;
      }
      re = /[0-9]/;
      if(!re.test(form.pass.value)) {
           swal(
      'Error!',
      'Password must contain at least one number (0-9)!',
      'error'
  )
        form.pass.focus();
        return false;
      }
      re = /[a-z]/;
      if(!re.test(form.pass.value)) {
        swal(
      'Error!',
      'Password must contain at least one lowercase letter (a-z)!',
      'error'
    )
        form.pass.focus();
        return false;
      }
      re = /[A-Z]/;
      if(!re.test(form.pass.value)) {
        swal(
      'Error!',
      'Password must contain at least one uppercase letter (A-Z)!',
      'error'
    )
        form.pass.focus();
        return false;
      }
    } else {
      swal(
      'Error!',
      'Paassword not Match!',
      'error'
    )
      form.pass.focus();
      return false;
    }
    swal(
  'Success!',
  'Registration Successfully\nYour Password has sent on your Email-id.',
  'success'
)
    return true;
  }
</script>

<script>
    function al(form) {
if (form.cont.value=="viki.aryan.negi@gmail.com") { 
if (form.apass.value=="vikram#123@") {              
location="admin.jsp" 
} else {
      swal(
      'Error!',
      'Invalid Password!',
      'error'
    )
}
} else {  
    swal(
      'Error!',
      'Invalid UserID!',
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
<span class="glyphicon glyphicon-envelope"></span> Bigboytoys@gmail.com    
<span class="glyphicon glyphicon-earphone"></span>  +91-9643385185
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
<a class="navbar-brand" href="#" style="color:#17A589">BigBoyToys</a>
      <ul class="nav navbar-nav navbar-right">

    <!-- Admin Login Button -->
    <li id="hi1"><a href="#" onclick="document.getElementById('id03').style.display='block'"><span class="glyphicon glyphicon-user"></span> Admin Login</a></li>
    
          <!-- User Login Button -->
    <li id="hi2"><a href="#" onclick="document.getElementById('id01').style.display='block'"><span class="glyphicon glyphicon-user"></span> Login</a></li>
    	
<!-- User Login Form Started -->
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="logincheck.jsp">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="images/myprofile.png" alt="Login Pic" class="avatar">
    </div>

      <!-- Login Form Started -->
    <div class="container ">
        
        <label><b>Email Id</b></label><br>
      <input type="email" placeholder="Enter Email-Id" name="mail" required><br><br>

      <label><b>Password</b></label><br>
      <input type="password" placeholder="Enter Password" name="pass" required><br><br>
        
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
	<li id="hi3"><a href="#" onclick="document.getElementById('id02').style.display='block'"><span class="glyphicon glyphicon-registration-mark"></span> Registration</a></li>
		
        
<!--           User Logged UserName Button 
<li id="hi4"><a href="#" ><span class="glyphicon glyphicon-user"></span> Vikram Singh Negi</a></li>

 User Logout Button 
<li id="hi5"><a href="#"><span class="glyphicon glyphicon-user"></span> Log Out</a></li>-->
        
        <div id="id02" class="modal">
  
                    
<!-- User Registration Form Started -->                    
   <form class="modal-content animate" action="RegisSuccess.jsp"  method="POST" onsubmit="return checkForm(this)">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      
    </div>
    <div class="container">
        <label><b>Name</b></label><br>
    <input type="text" placeholder="Enter Name" name="name" required><br>
    
    <label><b>Mobile</b></label><br>
    <input type="text" placeholder="Enter Mobile Number" name="contact" onchange="CheckIndianNumber(this.value)"  required maxlength="10"><br>

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

    
    <label><b>Email</b></label><br>
    <input type="email" placeholder="Enter Email" name="mail" onchange="myFunction(this.value)" pattern="[a-z0-9._%+-]+@gmail\.com$"  id="emailid" required><br>

           <script>
            function myFunction(val)
                    {
             var email_id=document.getElementById("emailid").value;
             console.log(email_id);
            $.ajax({
            type:"post",
            url:"mailChecking",
            data:{email:email_id},
            success: function (data, textStatus, jqXHR) {
                        var result=data;
                       swal({
  title: result,
  width: 600,
  padding: 100,
})
                    }
                });}
         
          </script>   
    <label><b>Password</b></label><br>
    <input type="password" placeholder="Enter Password" name="pass" required id="pass" ><br>

    <label><b>Repeat Password</b></label><br>
    <input type="password" placeholder="Repeat Password" name="repass" id="repass" required ><br>
   
    <div class="clearfix">
        <button type="submit" class="signupbtn" >Sign Up</button><br><br>
              <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
        <a href="#" onclick="document.getElementById('id01').style.display='block',document.getElementById('id02').style.display='none' " ><b class="alrbtn">Already Register? Click for Login</b></a>      
              
    </div>
	</div>
  </form>
</div>
      </ul>
    </div>
  </div>
</nav>
    
<img src="images/imgmain.jpg" class="img-responsive" style="width:100%"/>
<div class="carousel-caption">
    
        </div>
<div class="container-fluid">
  <div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="false">
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
      <div class="row">
      <div class="col-sm-3">
        <img src="images/ccad.png" class="listH" alt="Audi Client" id="swingimage" style="width:100%;">
      </div>
        
        <div class="col-sm-3">
        <img src="images/ccmahi.png" class="listH" alt="Land Rover Client" id="swingimage" style="width:100%;">
        </div>
        
        <div class="col-sm-3">
        <img src="images/cch.png" class="listH" alt="Hyundai Client" id="swingimage" style="width:100%;">
        
        </div>
        
                <div class="col-sm-3">
        <img src="images/ccjag.png" class="listH" alt="Jaguar Client" id="swingimage" style="width:100%;">
        </div>
                
        </div>
      </div>	
  </div>
</div>
</div>





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
