<%-- 
    Document   : sale_products
    Created on : Jul 7, 2017, 11:23:00 PM
    Author     : Vikram Singh Negi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Sale Products Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="js/sweetalert.min.js"></script>
<link rel="stylesheet" href="css/sweetalert.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquerys.js"></script>
  <script src="js/myscript.js"></script>
  <link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/mystyle.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />
<style>
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}


.page-wrap {
  max-width: 75rem;
  margin: 0 auto;
}

h1 {
  color: #8e44ad;
  font-size: 1.5rem;
  letter-spacing: -1px;
  margin: 1.25rem 0;
}

input:focus ~ label, textarea:focus ~ label, input:valid ~ label, textarea:valid ~ label {
 font-size: 0.75em;
 color: red;
 top: -2.50rem;
 -webkit-transition: all 0.125s ease;
 transition: all 0.125s ease;
}

.styled-input {
  float: left;
  width: 33.3333%;
  margin: 2rem 0 1rem;
  position: relative;
}

.styled-input label {
  color: #000;
  padding: 1rem;
  position: absolute;
  top: 0;
  left: 0;
  -webkit-transition: all 0.25s ease;
  transition: all 0.25s ease;
  pointer-events: none;
}

.styled-input.wide { width: 100%; }

input,
textarea {
  padding: 1rem 1rem;
  border: 1;
  width: 100%;
  font-size: 1rem;
}

input ~ span,
textarea ~ span {
  display: block;
  width: 0;
  height: 3px;
  background: #8e44ad;
  position: absolute;
  bottom: 0;
  left: 0;
  -webkit-transition: all 0.125s ease;
  transition: all 0.125s ease;
}

input:focus,
textarea:focus { outline: 0; }

input:focus ~ span,
textarea:focus ~ span {
  width: 100%;
  -webkit-transition: all 0.075s ease;
  transition: all 0.075s ease;
}

textarea {
  width: 100%;
  min-height: 15em;
}

.panel-default{
  background: rgba(255, 255, 255, 0.5);
}
.panel-default .panel-heading{
  background: rgba(255, 255, 255, 0.9);
}
.panel-default .panel-body{
  background: rgba(255, 255, 255, 0.0);
}
</style>
<script>
    $(function(){

        $('#tabtn1').click(function(e){
                e.preventDefault();

                $('#mytabs a[href="#tab2"]').tab('show');
            });

            $('#tabtn2').click(function(e){
                e.preventDefault();

                $('#mytabs a[href="#tab3"]').tab('show');
            });

        }); 
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
        <li class="active"><a href="sale_products.jsp">Sale Products</a></li>
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

<div class="container-fluid">
    <div class="row">
        <div class="col-md-13">          
	<img alt="" class="img-responsive" src="images/kc.jpg" width="100%">
    <br><br><br><br><br><br><br><br>      
            <div class="carousel-caption">
            <h2>Sale your Car</h2>
			<h4>It is absolutely FREE to list your car!</h4>
	
	<div class="panel panel-default">
    <div class="panel-heading" >
	<ul class="nav nav-tabs" id="mytabs">
<li class="active"><a href="#tab1" style="color:blue"><b>1. Car Details</b></a></li>
<li class="disabled"><a href="#tab2" style="color:blue"><b>2. Selling Price </b></a></li>
<li class="disabled"><a href="#tab3" style="color:blue"><b>3. Contact Details</b></a></li>
<li><a href="#tab4" data-toggle="tab" style="color:blue"><b>4. Uplode Car Image</b></a></li>
</ul>
</div>
	
    <div class="panel-body">
	<div class="tab-content clearfix">
    <div class="tab-pane fade in active" id="tab1">
        <form style="color:red" action="usale.jsp">
    <div class="styled-input">
      <input type="plain" required list="years" name="cry"/>
      <label>Registration Year</label>
      <span><datalist id="years">
	<option value="2017">
	<option value="2016">
	<option value="2015">
	<option value="2014">
	<option value="2013">
	<option value="2012">
	<option value="2011">
	<option value="2010">
	<option value="2009">
	<option value="2008">
	<option value="2007">
	<option value="2006">
	<option value="2005">
	<option value="2004">
	<option value="2003">
	<option value="2002">
	<option value="2001">
	<option value="2000">
	<option value="1999">
	<option value="1998">
	<option value="1997">
	<option value="1996">
	<option value="1995">
	<option value="1994">
	<option value="1993">
	<option value="1992">
	<option value="1991">
	<option value="1990">
	<option value="1989">
	<option value="1988">
    <option value="1987">
	<option value="1986">
	<option value="1985">
	<option value="1984">
    <option value="1983">
    <option value="1982">
    <option value="1981">
    <option value="1980">
  </datalist></span> </div>
    <div class="styled-input">
      <input type="plain" list="brand" name="cb" required />
      <label>Brand/Model</label>
      <span> <datalist id="brand" >
    <option  value="Aston Martin DB11">
    <option value="Aston Martin Rapide">
    <option value="Aston Martin Vanquish">
    <option value="Aston Martin vantage">
    <option value="Audi A3">
	<option value="Audi A3 cabriolet">
	<option value="Audi A4">
	<option value="Audi A6">
	<option value="Audi A3">
	<option value="Audi A8">
	<option value="Audi Q3">
	<option value="Audi Q5">
	<option value="Audi Q7">
	<option value="Audi R8">
	<option value="Audi RS6">
	<option value="Audi TT">
	<option value="BMW 1 Series">
	<option value="BMW 3 Series">
	<option value="BMW 5 Series">
	<option value="BMW 6 Series">
	<option value="BMW 7 Series">
	<option value="BMW M Series">
	<option value="BMW X1">
	<option value="BMW X3">
	<option value="BMW X5">
	<option value="BMW X6">
	<option value="BMW Z4">
	<option value="BMW i8">
	<option value="Bentley Bentayga">
	<option value="Bentley Continental">
	<option value="Bentley Flying Spur">
	<option value="Bentley Mulsanne">
	<option value="Bentley Veyron">
	<option value="Chevrolet Beat">
	<option value="Chevrolet Cruze">
	<option value="Chevrolet Enjoy">
	<option value="Chevrolet Sail">
	<option value="Chevrolet Sail Hatchback">
	<option value="Chevrolet Tavera">
	<option value="Chevrolet Trailblazer">
	<option value="Conquest Evade">
	<option value="DC Avanti">
	<option value="Duston Go">
	<option value="Duston Go Plus">
	<option value="Duston RediGo">
	<option value="Ferrari 458 Speciale">
	<option value="Ferrari 458 GTB">
	<option value="Ferrari California">
	<option value="Ferrari 	F12berlinetta">
	<option value="Ferrari FF">
	<option value="Fiat 500">
	<option value="Fiat Abarth Avventure">
	<option value="Fiat Avventure">
	<option value="Fiat Avventure Urban Cross">
	<option value="Fiat Linea">
	<option value="Fiat Linea Classic">
	<option value="Fiat Punto Abarth">
	<option value="Fiat Punto EVO">
	<option value="Fiat punto Pure">
	<option value="Force Gurkha">
	<option value="Force One">
	<option value="Ford Aspire">
	<option value="Ford Ecosport">
	<option value="Ford Endeavour">
	<option value="Ford Figo">
	<option value="Ford Mustang">
	<option value="Honda Accord">
	<option value="Honda Amaze">
	<option value="Honda BR-V">
	<option value="Honda Biro">
	<option value="Honda CR-V">
	<option value="Honda City">
	<option value="Honda Jazz">
	<option value="Honda Mobilio">
	<option value="Honda WR-V">
	<option value="Hyundai Creta">
	<option value="Hyundai EON">
	<option value="Hyundai Elantra">
	<option value="Hyundai Elite i20">
	<option value="Hyundai Grand i10">
	<option value="Hyundai Santa Fe">
	<option value="Hyundai Tucson">
	<option value="Hyundai Verna">
	<option value="Hyundai Xcent">
	<option value="Hyundai i10">
	<option value="Hyundai i20">
	<option value="ICML Extreme">
	<option value="Jaguar F type">
	<option value="Jaguar F-Pace">
	<option value="Jaguar XE">
	<option value="Jaguar XJ">
	<option value="Jeep Grand Cherokee">
	<option value="Jeep Wrangler">
	<option value="Lamborgini Aventador">
	<option value="Lamborgini Huracan">
	<option value="Land Rover Discovery 4">
	<option value="Land Rover Discovery Sport">
	<option value="Land Rover Range Rover">
	<option value="Land Rover Range Rover Evoque">
	<option value="Land Rover Range Rover Sport">
	<option value="Mahindra Bolero">
	<option value="Mahindra E Verito">
	<option value="Mahindra Kuv 100">
	<option value="Mahindra Navo Sport">
	<option value="Mahindra Quanto">
	<option value="Mahindra Scorepio">
	<option value="Mahindra Ssangyong Rexton">
	<option value="Mahindra TUV 300">
	<option value="Mahindra Thar">
	<option value="Mahindra Verito">
	<option value="Mahindra Verito Vibe">
	<option value="Mahindra XUV500">
	<option value="Mahindra Xylo">
	<option value="Mahindra e2o Plus">
	<option value="Mahindra Alto 800">
	<option value="Mahindra Alto K 10">
	<option value="Maruti Baleno">
	<option value="Maruti Baleno">
	<option value="Maruti Celerio">
	<option value="Maruti Ciaz">
	<option value="Maruti Eeco">
	<option value="Maruti Ertiga">
	<option value="Maruti Gypsy">
	<option value="Maruti lgnis">
	<option value="Maruti Omni">
	<option value="Maruti SX4 S Cross">
	<option value="Maruti Swift">
	<option value="Maruti Swift Dzire">
	<option value="Maruti Vitara Brezza">
	<option value="Maruti Wagon R">
	<option value="Maruti Wagon R Stingray">
	<option value="Mercedes-Benz A Class">
	<option value="Mercedes-Benz AMT GT">
	<option value="Mercedes-Benz B Class">
	<option value="Mercedes-Benz CLA">
	<option value="Mercedes-Benz CLS Class">
	<option value="Mercedes-Benz E Class">
	<option value="Mercedes-Benz G">
	<option value="Mercedes-Benz GLA">
	<option value="Mercedes-Benz GLC Class">
	<option value="Mercedes-Benz GLE">
	<option value="Mercedes-Benz GLS">
	<option value="Mercedes-Benz S Class">
	<option value="Mercedes-Benz S Cabriolet">
	<option value="Mercedes-Benz SLC">
	<option value="Mitsubishi Montero">
	<option value="Mitsubishi Pajero">
	<option value="Nissan GTR">
	<option value="Nissan Micra">
	<option value="Nissan Micra-Active">
	<option value="Nissan Sunny">
	<option value="Nissan Terrano">
	<option value="Porsche 718">
	<option value="Porsche 911">
	<option value="Porsche Boxster">
	<option value="Porsche Cayenne">
	<option value="Porsche Cayman">
	<option value="Porsche Macan">
	<option value="Porsche Panamera">
	<option value="Skoda Octavia">
	<option value="Skoda Rapid">
	<option value="Skoda Superb">
	<option value="Skoda Yeti">
	<option value="Tata Bolt">
	<option value="Tata Hexa">
	<option value="Tata Indica V2">
	<option value="Tata Indigo eCS">
	<option value="Tata Nano">
	<option value="Tata New Safari">
	<option value="Tata Safari Storme">
	<option value="Tata Sumo">
	<option value="Tata Tiago">
	<option value="Tata Xenon XT">
	<option value="Tata Zest">
	<option value="Tayota Camry">
	<option value="Tayota Corolla Altis">
	<option value="Tayota Etios">
	<option value="Tayota Etios Cross">
	<option value="Tayota Etios Live">
	<option value="Tayota Fortuner">
	<option value="Tayota Innova Crysta">
	<option value="Tayota Land Cruiser">
	<option value="Tayota Land Cruiser Prado">
	<option value="Tayota Prius">
	</datalist>
</span> </div>

    <div class="styled-input">
      <input type="plain" required name="cv"/>
      <label>Varient</label>
      <span></span> </div>
	  
	  <div class="styled-input">
      <input type="number" required name="ckd" maxlength="6"/>
      <label>Kilometers Driven</label>
      <span></span> </div>
	  
	  <div class="styled-input">
      <input type="plain" list="color" required name="cc"/>
      <label>Color</label>
      <span><datalist id="color" >
    <option  value="White">
    <option value="Silver">
    <option value="Black">
    <option value="Gray">
    <option value="Blue">
	<option value="Red">
	<option value="Brown">
	<option value="Green">
	<option value="Gold">
	<option value="Orange">
	<option value="Voilet">
	<option value="Yellow">
	<option value="Other">
	</datalist>
	</span> </div>
	  
	  <div class="styled-input">
      <input type="plain" list="owner" required name="co"/>
      <label>Ownership</label>
      <span><datalist id="owner" >
    <option  value="First">
    <option value="Second">
    <option value="Third or Above">
	</datalist>
	</span> </div>
	  
	  <div class="styled-input">
      <input type="plain" required name="ccity"/>
      <label>Address</label>
 </div>

	<div class="styled-input">
      <input type="plain" required name="cpin"/>
      <label>Pincode</label>
      <span></span> </div>
	  
  
	  <div class="styled-input">
      <button type="submit" id="tabtn1" style="background-color:#FF5733; margin-top:-5px;"><b>NEXT</b></button>
       </div>
		
  
	</div>
    <div class="tab-pane fade" id="tab2">
	<div class="styled-input">
      <input type="number" required class="form-control" name="xe" minlength="4" maxlength="10"/>
      <label class="fa fa-inr"> <b>Expected Selling Price</b></label>
      <span></span> </div>
	  
	  <div class="styled-input">
      <button type="submit" id="tabtn2" style="background-color:#FF5733; margin-top:-5px;"><b>NEXT</b></button>
      <span></span> </div>
	</div>
    <div class="tab-pane fade" id="tab3">
	<div class="styled-input" style="color:red">
      <input type="plain" required name="naam"/>
      <label>Name</label>
      <span></span> </div>
	  
	  <div class="styled-input" style="color:red">
      <input type="email" required name="gmail"/>
      <label>Email</label>
      <span></span> </div>
	  
	  <div class="styled-input" style="color:red">
      <input type="plain" required maxlength="10" name="mobile" onchange="CheckIndianNumber(this.value)"/>
      <label>Mobile<sub>(10 digit)</sub></label>
      <span></span> </div>
	  
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
        
	<center><div class="styled-input">
         <button type="submit"  style="background-color:#FF5733;margin-left:120%"><b>SUBMIT</b></button>
      <span></span> </div></center>
        </form>
	</div>
	
	<div class="tab-pane fade" id="tab4">
	  
      <div>
<form  action="SaleImgData" method="post" enctype="multipart/form-data">
          <div id="image-preview-div" style="display: none">
            <label for="exampleInputFile">Selected image:</label>
            <img id="preview-img" src="noimage">
          </div>
          <div class="form-group">
            <input type="file" name="file121" id="fileupload" required multiple="multiple">
        <hr/>
        <b>Live Preview</b>
        <div id="dvPreview">
        </div>
          </div>
    <input type="submit" class="btn btn-primary"  value="Upload image" style="width:15%"><br><br>
    
        </form>
      </div>
    
	  
	  
	</div>
    </div>
	</div>
    <div class="panel-footer" style="background-color:green">Fill all details for Selling your car</div>
  </div>
	</div>
    </div>
              
 </div>
 
</div>
<!--HOME PAGE-->  

<!--HOME PAGE End-->  
<!--Footer section start -->
<footer class="container-fluid text-center">
  <h4><i><b>Online b&s cars</b></i></h4>  
  <form class="form-inline"><b>Get deals:</b>
    <input type="email" class="form-control" size="50" placeholder="Enter your email-id" required>
    <button type="button" class="btn btn-danger lastbtn">Subscribe now</button>
  </form>
</footer>

<!--latest footer at bottom start -->
<div class="container-fluid footer" >
<div class="container-fluid">
<div class="col-sm-4">
<img src="images/footpic.jpg" alt="" class="img-responsive" />
<p>At Scrubs, we know your time is valuable. Having to take your car in to get washed and detailed is typically a hassle. Even going out without your vehicle for a few hours can be inconvenient at the best of times....</p>

<p><a href="#" class="btn btn-danger" >Read More...</a></p>
</div>
<div class="col-sm-4 midfooter">
<h3>Quick Links</h3>
<ul>
<li><a href="#">&raquo; Home </a></li>
<li><a href="#">&raquo; Buy Products</a></li>
<li><a href="#">&raquo; Sale Products</a></li>
<li><a href="#">&raquo; Career</a></li>
<li><a href="#">&raquo; About Us</a></li>
<li><a href="#">&raquo; Contact Us</a></li>
</ul>

</div>
<div class="col-sm-4"></div>
<h3>Contact Details</h3>
<p>Address : </strong> Chhattarpur new delhi(Delhi,India)(Delhi,India)</p>
<p>Email : </strong> buy&saleCar@gmail.com</p>
<p>Phone : </strong> 9560739311</p>
<p>Timing : </strong> 9:30am to 6:30pm</p>
</div>
</div>


<!--latest footer at bottom ending -->

<!--footer section end -->
<script language="javascript" type="text/javascript">
        $(function () {
            $("#fileupload").change(function () {
                if (typeof (FileReader) != "undefined") {
                    var dvPreview = $("#dvPreview");
                    dvPreview.html("");
                    var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.gif|.png|.bmp)$/;
                    $($(this)[0].files).each(function () {
                        var file = $(this);
                        if (regex.test(file[0].name.toLowerCase())) {
                            var reader = new FileReader();
                            reader.onload = function (e) {
                                var img = $("<img />");
                                img.attr("style", "height:100px;width: 100px");
                                img.attr("src", e.target.result);
                                dvPreview.append(img);
                            }
                            reader.readAsDataURL(file[0]);
                        } else {
                            alert(file[0].name + " is not a valid image file.");
                            dvPreview.html("");
                            return false;
                        }
                    });
                } else {
                    alert("This browser does not support HTML5 FileReader.");
                }
            });
        });
    </script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-46156385-1', 'cssscript.com');
  ga('send', 'pageview');

</script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="upload-image.js"></script>
</body>
</html>

