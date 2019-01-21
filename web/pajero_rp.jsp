<%-- 
    Document   : pajero_rp
    Created on : Jan 2, 2017, 6:41:57 PM
    Author     :  Sonu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Pajero Check on Road-Price</title>
  <meta charset="utf-8">

    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="js/seekbar.js"></script>
    <link rel="stylesheet" type="text/css" href="css/seekbar.css"/>
	
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/bootstrap.js"></script>
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
  <link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/mystyle.css" />
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />

<!--tooltip script-->
<script type="text/javascript">
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip({
        placement : 'top'
    });
});
</script>

<!--tooltip style-->

<style>
.nanolist_head {
border-style: outset;
padding-top:10px;
padding-bottom:20px;
margin-top:30px;
margin-bottom:50px;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

optgroup {
color:green;
}

option{
color:darkgreen;
}

.tt{
    	margin: 50px;
    }
    .tt p{
        font-size: 22px;        
        text-decoration: none;
        margin: 0 10px;
    }
</style>

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

<!--center heading start-->
<center><h2 style="color:#239B56; font-family:Fixedsys;"><b style="color:darkblue">Pajero</b> <b style="color:red"> ==> </b><b>Check on Road Price </b></h2></center>
<!--center heading start-->


<!--main detail box start-->
<div class="container nanolist_head">
<div class="row">
<div class="col-sm-2">
<img src="images/inner_innova1.jpg" width="100%"/>
<center><h5><b style="color:darkgreen;">PAJERO </b></h5></center>
		<i>Rating...</i><img src="images/rating_full.png" />
		<img src="images/rating_full.png" />
		<img src="images/rating_full.png" />
		<img src="images/rating_full.png" />
		<img src="images/rating_half.png" />
</div>

<div class="col-sm-4">
<h4><i>Pajero on road price in</i>
<sub style="font-size:13px; color:red;"><select class="selectpicker">
  <optgroup label="Popular Cities">
  <optgroup label="New Delhi/Delhi NCR">
  <option>East Delhi</option>
    <option>West Delhi</option>
	<option>South Delhi</option>
	<option>North Delhi</option>
	<option>Noida</option>
	<option>Gurugram</option>
  </optgroup>
  </optgroup>
  
  <optgroup label="Bangalore">
  <option>Bannerghatta</option>
    <option>ITPL</option>
    <option>Hebbal</option>
	<option>Kormangala</option>
	<option>Bommanahalli</option>	
  </optgroup>
  
  <optgroup label="Chennai">
  <option>South Chennai</option>
    <option>North Chennai</option>
  </optgroup>

  <optgroup label="Kolkata">
  <option>South Kolkata</option>
    <option>North Kolkata</option>
	<option>East Kolkata</option>
	<option>Center Kolkata</option>
  </optgroup>
  
  <optgroup label="Mumbai">
  <option>Bandra</option>
    <option>Andheri</option>
	<option>Harbour</option>
	<option>Jogeshwari</option>
	<option>Mira Bhayandar</option>
  </optgroup>
  
</select></sub>
</h4>

<br>
<h4><b>Car Varient </b></h4><hr>
<h5><b>Ex-Showroom Price</b></h5><br><br>
<h5><b>RTO</b></h5><br><br>
<h5><b>Insurance</b></h5><br><br>
<h5><b>Other</b></h5><br><hr>
<h4><b>ON ROAD PRICE</b></h4><br>
</div>

<div class="col-sm-2">
</div>

<div class="col-sm-2">
<br><br><br>
<h4><b>XE </b><sub><i>Base Model</i></sub></h4><hr>
<p><img src="images/ic.png" />24,50,000</p><br><br>
<p><img src="images/ic.png" />1,30,000</p><br><br>
<p><img src="images/ic.png" />1,20,000</p><br><br>
<p tt><img src="images/ic.png"/>58,000 <i class="glyphicon glyphicon-question-sign" style="color:red;"  data-toggle="tooltip"
 data-original-title="Extended Warranty	-  18,000. Accessories Charges	-	21,000. AMC Charges	-	9,000.TCS Charges	-	5,600. Other Charges	-	4,400."></i></p><br><br><hr>
 <h4><img src="images/ic.png" /><b id="total">27,58,000</b><sup>#</br></sup></h4><br>
 </div>

 
 
<div class="col-sm-2 ft">

<b><sub style="font-size:12px; color:red;"><p style="font-size:12px; color:green;">Change Fuel Type : </p><select class="selectpicker">
  <option>Diesel</option>
  <option>Petrol</option>
  <option>Both</option>
</select></sub></b>
<br><br>
<h4 style="margin-top:20px;"><b>XM</b></p></h4><hr>
<p><img src="images/ic.png" />22,60,000</p><br><br>
<p><img src="images/ic.png" />1,10,000</p><br><br>
<p><img src="images/ic.png" />1,00,000</p><br><br>
<p><img src="images/ic.png"/>30,000<i class="glyphicon glyphicon-question-sign" style="color:red;"  data-toggle="tooltip"
 data-original-title="Extended Warranty	-  7,000. Std. Accessories Charges	-	10,000. AMC Charges	-	6,000. TCS Charges	-	4,000 . Other Charges	-	3,000."></i></p><br><br><hr>
 <h4><img src="images/ic.png" /><b>25,00,000<sup>#</b></sup></h4><br>
</div>
</div>
</div>
</div>
</div>

<div class="container">    
  <div class="row">
    <div class="col-sm-6">
      <div class="panel panel-default">
        <div class="panel-heading" ><h4 style="font-family:Comic Sans MS;">Calculate loan & EMI of this car</h4></div>
<br>
		<center><h4><b style="color:#2874A6;">Total Car Price :- </b><img src="images/ic.png"/><b id="totalE">amount</b></h4></center><br>
		<center><h4><b style="color:#2874A6;">Total Balance for EMI :- </b><img src="images/ic.png"/><b id="balanceP">amount</b></h4></center><br>
	<b style="color:green; margin-left:25px;">1) Down Payment you will make.</b>
    <div id="seekbar-container-vertical-red" style="width:300px;height:20px;float:left;margin-right:100px;margin-left:20px">
	<div id="code1" style="color:#2874A6;text-align:center;background-color:#D5DBDB;width:50px;height:20px;line-height:20px;border-radius:10px; margin-left:250px;"></div>
	</div>
	<h4 id="downpay" style="font-family:Impact;"></h4>
	<br><br>
	
	<b style="color:green; margin-left:25px;">2) Bank Interest Rate.</b><br>
	<div id="seekbar-container-vertical-green" style="width:300px;height:20px;float:left;margin-right:100px;margin-left:20px">
	<div id="code2" style="color:#2874A6;text-align:center;background-color:#D5DBDB;width:50px;height:20px;line-height:20px;border-radius:10px; margin-left:250px;"></div>
	</div><h4 id="rateI" style="font-family:Impact;"> amount  </h4>
	<br><br>
	
	<b style="color:green; margin-left:25px;">3) Loan Period.</b><br>
    <div id="seekbar-container-vertical-blue" style="width:300px;height:20px;float:left;margin-right:100px;margin-left:20px">
	<div id="code3" style="color:#2874A6; text-align:center;background-color:#D5DBDB;width:90px;height:20px;line-height:20px;border-radius:10px; margin-left:250px;"> </div>
	</div><h4 id="lOn" style="font-family:Impact;"> amount </h4>
	<br><hr>
	<div style="width:100%; margin-left:20px;">
	<h2 style="font-family:Bradley Hand ITC; "><b>EMI <sub style="font-family: amertype md bt; font-size:15px;">per month</sub> :- </b><b id="em">amount</b></h2>
</div>
        <div class="panel-footer"><b style="color:red;">Buy at  </b><img src="images/ic.png"/><b id="totalEF">amount</b></div>
      </div>
    </div>
    <div class="col-sm-6"> 
      <div class="panel panel-default">
        <div class="panel-heading"><h4 style="font-family:Comic Sans MS;">Running cost of this car</h4></div>
		
		<div class="input-group">
		<h4><b style="font-family:Arial narrow; margin-left:25px;">ENTER DISTANCE DRIVEN PER DAY</b></h4>
		<input id="msg" type="text" maxlength="3" class="form-control" name="txtD" placeholder="Enter Distance" style="margin-left:20px; margin-right:20px; height:70px; width:400px;">
		<b>Kms</b><button type="button" class="btn btn-success btn-lg" style="width:15%; padding-left:5px; padding-right:5px;" onclick="textEventM()">Click</button>
		<br><br><h4 style="margin-left:25px;">RUNNING COST <img src="images/ic.png"/><b id="resD">0</b><sup style="color:red"> *</sup><sub style="color:darkgreen"><b> per month</b></sub></h4>
		</div><br><br><br>
        <div class="panel-footer"><b style="color:red;">1 km = </b><img src="images/ic.png"/><b>103.00 per month</b></div>
      </div>
    </div>
	<div class="col-sm-6">
	<center><img src="images/car_round.png"/></center>
	<img src="images/car_anim.gif" style="margin-top:20px;"/>
	<img src="images/car_anim.gif" style="margin-top:20px;"/>
	<img src="images/car_anim.gif" style="margin-top:20px;"/>
	<img src="images/car_anim.gif" style="margin-top:20px;"/>
	<img src="images/car_anim.gif" style="margin-top:20px;"/>
	<img src="images/car_anim.gif" style="margin-top:20px;"/>
	<img src="images/car_anim.gif" style="margin-top:20px;"/>
	<img src="images/car_anim.gif" style="margin-top:20px;"/>
	</div>
  </div>
</div><br>

<!--main detail box end-->



<!--Footer start-->	
<div class="container-fluid footer" >
<div class="container-fluid">
<div class="col-sm-4">
<img src="images/footpic.jpg" alt="" class="img-responsive" />
<p>At Scrubs, we know your time is valuable. Having to take your car in to get washed and detailed is typically a hassle. Even going out without your vehicle for a few hours can be inconvenient at the best of times....</p>
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
<!--Footer end-->		

<!--Seekbar script start-->		
<script type="text/javascript">
	
	function textEventM() {
	var disT = document.getElementsByName('txtD')[0].value
	var disR = parseInt(disT);
	var distR=disR*103;
	document.getElementById("resD").innerHTML =distR.toFixed(2);
}
	
    var seekbar = new Seekbar.Seekbar({
        renderTo: "#seekbar-container",
        valueListener: function (value) {
            this.setValue(Math.round(value));

        }
    });
    var redSlider = new Seekbar.Seekbar({
        renderTo: "#seekbar-container-vertical-red",
        minValue: 0, maxValue: 100,
        valueListener: function (value) {
            this.value = Math.round(value);
            updateColorPreview();
        },
        barSize:4,
        needleSize:0.5,
        value: 25
    });

    var greenSlider = new Seekbar.Seekbar({
        renderTo: "#seekbar-container-vertical-green",
        minValue: 0, maxValue: 22,
        barSize:4,
        valueListener: function (value) {
            this.value = Math.round(value);
            updateColorPreview();
        },
        needleSize:0.2,
        value: 8
    });
    var blueSlider = new Seekbar.Seekbar({
        renderTo: "#seekbar-container-vertical-blue",
        minValue: 0, maxValue: 84,
        barSize:4,
        needleSize:0.2,
        valueListener: function (value) {
            this.value = Math.round(value);
            updateColorPreview();
        },
        value: 12
    });

    function updateColorPreview() {

        var red = redSlider.value.toString(10);
        var green = greenSlider.value.toString(10);
        var blue = blueSlider.value.toString(10);

		var sb =(red.length == 1 ? "0": "") + red;
		var sbb =(green.length == 1? "0": "") + green;
		var sbbb =(blue.length==1?"0":"") + blue;

		$("#code1").html(sb.toUpperCase()+"%");
		$("#code2").html(sbb.toUpperCase()+"%");
		$("#code3").html(sbbb.toUpperCase()+"Months");
		
		//total calculation of EMI
		var total=document.getElementById("total").innerHTML;
		var dpm=document.getElementById("totalE").innerHTML=total;
		//panel footer
		var pFooter=document.getElementById("totalEF").innerHTML=total;
		
		var totalA=parseInt(total);
		var dpmm=parseInt(dpm);
		var dp = dpmm*sb*1000;
		document.getElementById("downpay").innerHTML = dp.toFixed(2);
		
		var bp=totalA*100000-dp;
		document.getElementById("balanceP").innerHTML = bp.toFixed(2);
		
		var inte = bp*sbb/100;
		document.getElementById("rateI").innerHTML = inte.toFixed(2);
				
		var ln =  1*sbbb;
		document.getElementById("lOn").innerHTML = ln.toFixed(2);
		
		var emi =(bp+inte)/ln ;
		document.getElementById("em").innerHTML = emi.toFixed(2);
		
		
    }

    updateColorPreview();
</script>

<!--Seekbar script end-->		
	</body>
</html>