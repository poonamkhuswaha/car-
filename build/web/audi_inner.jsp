<%-- 
    Document   : audi_inner
    Created on : Jan 23, 2017, 8:05:39 PM
    Author     : Sonu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-compatable" Content="IE-edge>"
<meta name="viewport" content = "width-device-width"> 
<title>Audi Car page</title>
  <script src="js/sweetalert.min.js"></script>
<link rel="stylesheet" href="css/sweetalert.css">
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />

<style>
.btn-danger{
margin-left:50px;
}

.btn-info{
margin-left:50px;
}

.nano_head {
border-style: outset;
padding-top:10px;
padding-bottom:20px;
margin-top:30px;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  text-align: center;

}

button[type=submit] {
background-color: #222222;
width:80px;
color:#fff;
    display: inline-block;
    border: 1px solid #000;
	border-radius:1px;
    box-sizing: border-box;
}

input[type=text], select {
    width: 10%;
    margin: 8px 0;
	border-radius:1px;
    display: inline-block;
    border: 1px solid #000;
    box-sizing: border-box;
}
.top_bar {background:#145A32; padding:5px 0;
padding-top:20px;
padding-bottom:20px;
}
.social_icon {margin-right:5px;}
.contact_info{color:#fff; font-size:16px; }

.nanolist_head {
border-style: outset;
padding-top:10px;
padding-bottom:20px;
margin-top:30px;
margin-bottom:50px;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
</style>
</head>

<!--header -->
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
</body>
<body>
<div class="container nano_head"> <!-- main contain of car-->
<div class="row">
<div class="col-sm-5" >
        <div class="panel-heading"><b>Audi-<i>A3</i> Car</b></div>
        <div class="panel-body"><img src="images/audi_car_in.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
      </div>

<div class="col-sm-7">
        <h3><b>Audi-<i>A3</i></b></h3>
		<img src="images/rating_full.png" />
		<img src="images/rating_full.png" />
		<img src="images/rating_full.png" />
		<img src="images/rating_full.png" />
		<img src="images/rating_half.png" />
		
	<hr>
		
		<h4 style="color:#F08080"><img src="images/ic_pink.png" /><b>31.25 Lakhs</b> <sub>onwards</sub></h4>
		<p>Avg. Ex-Showroom<br>
		EMI starts at <img src="images/ic.png" /><b>57,097/-</b></p>
		<h4><a href="#">Get EMI Assistance</a></h4><br><br>		
<p><a href="#" data-toggle="modal" data-target="#myModal" class="btn btn-success glyphicon glyphicon-hand-right"> BOOK NOW</a>
<a href="audi_rp.jsp" class="btn btn-danger" >CHECK ON-ROAD PRICE</a>
</p>
</div><br>
</div>
</div>


<div class="container nanolist_head">
<div class="row">
<div class="col-sm-2">
<img src="images/inner_audi1.jpg" width="100%"/>
</div>

<div class="col-sm-3">
<h5><b>Audi Q3 </b></h5>
<p><img src="images/ic.png" />2.9 Lakhs <i>Avg. Ex-Showroom</i><p>

</div>

<div class="col-sm-7">
<h5><b>Nano Milage : </b>36km/kg CNG Manual & 25.4 Kmpl Petrol Manual</p></h5>
<h5><b>Nano Colures : </b>Cornflower Blue,Papaya Orange,Meteor Silver,Mojito Green,Pearl White,Rough Red,Serene White,Royal Gold,Dazzle Blue</p></h5>
</div>
</div>
<hr>
<div class="row">
<div class="col-sm-2">
<img src="images/inner_audi2.jpg" width="100%"/>
</div>

<div class="col-sm-3">
<h5><b>Audi A4</b></h5>
<p><img src="images/ic.png" />2.38 Lakhs <i>Avg. Ex-Showroom</i><p>

</div>

<div class="col-sm-7">
<h5><b>Nano GenX Milage : </b>21.9 Kmpl Petrol Automatic & 23.6 Kmpl Petrol Manual</p></h5>
<h5><b>Nano GenX Colures : </b>Meteor Silver, Sangria Red, Damson Purple, Dazzle Blue, Pearl White, Persian Rose, Royal Gold</p></h5>
</div>

</div>

<hr>
<div class="row">
<div class="col-sm-2">
<img src="images/inner_audi3.jpg" width="100%"/>
</div>

<div class="col-sm-3">
<h5><b>Audi A3 Cabriolet</b></h5>
<p><img src="images/ic.png" />2.38 Lakhs <i>Avg. Ex-Showroom</i><p>

</div>

<div class="col-sm-7">
<h5><b>Nano GenX Milage : </b>21.9 Kmpl Petrol Automatic & 23.6 Kmpl Petrol Manual</p></h5>
<h5><b>Nano GenX Colures : </b>Meteor Silver, Sangria Red, Damson Purple, Dazzle Blue, Pearl White, Persian Rose, Royal Gold</p></h5>
</div>

</div>

<hr>
<div class="row">
<div class="col-sm-2">
<img src="images/inner_audi4.jpg" width="100%"/>
</div>

<div class="col-sm-3">
<h5><b>Audi Q5</b></h5>
<p><img src="images/ic.png" />2.38 Lakhs <i>Avg. Ex-Showroom</i><p>

</div>

<div class="col-sm-7">
<h5><b>Nano GenX Milage : </b>21.9 Kmpl Petrol Automatic & 23.6 Kmpl Petrol Manual</p></h5>
<h5><b>Nano GenX Colures : </b>Meteor Silver, Sangria Red, Damson Purple, Dazzle Blue, Pearl White, Persian Rose, Royal Gold</p></h5>
</div>

</div>

<hr>
<div class="row">
<div class="col-sm-2">
<img src="images/inner_audi5.jpg" width="100%"/>
</div>

<div class="col-sm-3">
<h5><b>Audi A6</b></h5>
<p><img src="images/ic.png" />2.38 Lakhs <i>Avg. Ex-Showroom</i><p>

</div>

<div class="col-sm-7">
<h5><b>Nano GenX Milage : </b>21.9 Kmpl Petrol Automatic & 23.6 Kmpl Petrol Manual</p></h5>
<h5><b>Nano GenX Colures : </b>Meteor Silver, Sangria Red, Damson Purple, Dazzle Blue, Pearl White, Persian Rose, Royal Gold</p></h5>
</div>

</div>

<hr>
<div class="row">
<div class="col-sm-2">
<img src="images/inner_audi6.jpg" width="100%"/>
</div>

<div class="col-sm-3">
<h5><b>Audi TT</b></h5>
<p><img src="images/ic.png" />2.38 Lakhs <i>Avg. Ex-Showroom</i><p>

</div>

<div class="col-sm-7">
<h5><b>Nano GenX Milage : </b>21.9 Kmpl Petrol Automatic & 23.6 Kmpl Petrol Manual</p></h5>
<h5><b>Nano GenX Colures : </b>Meteor Silver, Sangria Red, Damson Purple, Dazzle Blue, Pearl White, Persian Rose, Royal Gold</p></h5>
</div>

</div>

<hr>
<div class="row">
<div class="col-sm-2">
<img src="images/inner_audi7.jpg" width="100%"/>
</div>

<div class="col-sm-3">
<h5><b>Audi S5 Sportback</b></h5>
<p><img src="images/ic.png" />2.38 Lakhs <i>Avg. Ex-Showroom</i><p>

</div>

<div class="col-sm-7">
<h5><b>Nano GenX Milage : </b>21.9 Kmpl Petrol Automatic & 23.6 Kmpl Petrol Manual</p></h5>
<h5><b>Nano GenX Colures : </b>Meteor Silver, Sangria Red, Damson Purple, Dazzle Blue, Pearl White, Persian Rose, Royal Gold</p></h5>
</div>

</div>

<hr>
<div class="row">
<div class="col-sm-2">
<img src="images/inner_audi8.jpg" width="100%"/>
</div>

<div class="col-sm-3">
<h5><b>Audi Q7</b></h5>
<p><img src="images/ic.png" />2.38 Lakhs <i>Avg. Ex-Showroom</i><p>

</div>

<div class="col-sm-7">
<h5><b>Nano GenX Milage : </b>21.9 Kmpl Petrol Automatic & 23.6 Kmpl Petrol Manual</p></h5>
<h5><b>Nano GenX Colures : </b>Meteor Silver, Sangria Red, Damson Purple, Dazzle Blue, Pearl White, Persian Rose, Royal Gold</p></h5>
</div>

</div>

<hr>
<div class="row">
<div class="col-sm-2">
<img src="images/inner_audi9.jpg" width="100%"/>
</div>

<div class="col-sm-3">
<h5><b>Audi A8 L</b></h5>
<p><img src="images/ic.png" />2.38 Lakhs <i>Avg. Ex-Showroom</i><p>

</div>

<div class="col-sm-7">
<h5><b>Nano GenX Milage : </b>21.9 Kmpl Petrol Automatic & 23.6 Kmpl Petrol Manual</p></h5>
<h5><b>Nano GenX Colures : </b>Meteor Silver, Sangria Red, Damson Purple, Dazzle Blue, Pearl White, Persian Rose, Royal Gold</p></h5>
</div>

</div>

<hr>
<div class="row">
<div class="col-sm-2">
<img src="images/inner_audi10.jpg" width="100%"/>
</div>

<div class="col-sm-3">
<h5><b>Audi RS6</b></h5>
<p><img src="images/ic.png" />2.38 Lakhs <i>Avg. Ex-Showroom</i><p>

</div>

<div class="col-sm-7">
<h5><b>Nano GenX Milage : </b>21.9 Kmpl Petrol Automatic & 23.6 Kmpl Petrol Manual</p></h5>
<h5><b>Nano GenX Colures : </b>Meteor Silver, Sangria Red, Damson Purple, Dazzle Blue, Pearl White, Persian Rose, Royal Gold</p></h5>
</div>

</div>

</div>

<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color:green; color:orange">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Fill your details to contact Dealer</h4>
        </div>
        <div class="modal-body">
          <form action="finalbook.jsp">
    <div class="form-group">
        <label for="pwd">Name:</label>
     <input type="plain" class="form-control" placeholder="Enter your name" name="bname" required>
    </div>
     <div class="form-group">
         <label for="pwd">Email:</label>
     <input type="email" class="form-control" placeholder="Enter your email" name="bemail" required>
    </div>
    <div class="form-group">
      <label>Contact:</label>
      <input type="plain" class="form-control" placeholder="Enter your mobile number" name="bnumber" required maxlength="10" onchange="CheckIndianNumber(this.value)">
    </div>
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
     <div class="form-group">
     <label>Your Messages:</label>
  <textarea class="form-control" rows="5" name="bcomment" required></textarea> 
    </div>
      <div class="modal-footer"><button type="submit" class="btn btn-primary">SUBMIT</button></div>
  </form>
        </div>
      </div>
      
    </div>
  </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"> src = "C:\Users\sltuser\Desktop\Buy & Sale Car Project\js/jquery.js" </script>
<script type="text/javascript"> src = "C:\Users\sltuser\Desktop\Buy & Sale Car Project\js/bootstrap.js" </script>
</body>

</html>