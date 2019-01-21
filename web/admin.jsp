<%-- 
    Document   : admin
    Created on : Jan 9, 2017, 6:18:57 PM
    Author     : Sonu
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>AdminPanel</title>

    <link media="all" rel="stylesheet" type="text/css" href="css/all.css" />
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script type="text/javascript">window.jQuery || document.write('<script type="text/javascript" src="js/jquery-1.7.2.min.js"><\/script>');</script>
    <script type="text/javascript" src="js/jquery.main.js"></script>
    <!-- Custom CSS -->
    <link href="css/styleadmin.css" rel='stylesheet' type='text/css' />

    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet"> 

    <link rel="stylesheet" href="css/mystyle.css" />
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />
    <!--[if lt IE 9]><link rel="stylesheet" type="text/css" href="css/ie.css" /><![endif]-->

    <style>
.pagination {
    display: inline-block;
}
.pagination a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
}

.pagination a.active {
    background-color: #4CAF50;
    color: white;
}

.pagination a:hover:not(.active) {background-color: #ddd;}
</style>
</head>
<body>
    <div id="wrapper">
        <div id="content">
            <div class="c1">
                <div class="controls">
                    <nav class="links">
                        <ul>
                            <li><a href="#" class="ico2">User Registered<span class="num"><b id="RegisCount">0</b></span></a></li>
                            <li><a href="#" class="ico2">Products<span class="num"><b id="AdetalsCount">0</b></span></a></li>
                            <li><a href="#" class="ico2">User Products<span class="num"><b id="usds">0</b></span></a></li>
                            <li><a href="#" class="ico2">User Car Booking<span class="num" id="bdc">0</span></a></li>
                            <li><a href="#" class="ico1">Contact Us<span class="num"><b id="contctCount">0</b></span></a></li>
                        </ul>
                    </nav>
                    <div class="profile-box">
                        <span class="profile">
                            <a href="#" class="section">
                                <img class="image" src="images/img1.jpg" alt="image description" width="26" height="26" />
                                <span class="text-box">
                                    Welcome
                                    <strong class="name">Vikram Singh Negi</strong>
                                </span>
                            </a>
                            <a href="#" class="opener">opener</a>
                        </span>
                        <a href="loginform.jsp" class="btn-on">On</a>
                    </div>
                </div>

                <div class="tabs">
                    <!--tab 1 started-->
                    <div id="tab-1" class="tab">
                        <article>
                            <div class="text-section">
                                <h1>Dashboard</h1>
                                <p>Seel All Detail at Here</p>
                            </div>
                            <ul class="states">
                                <!-- four-grids -->
                                <div class="row four-grids" style="margin-left: 20px;">
                                    <div class="col-md-3 ticket-grid" style="width: 20%">
                                        <div class="tickets">
                                            <div class="grid-left">
                                                <div class="book-icon">
                                                    <i class="fa fa-book"></i>
                                                </div>
                                            </div>
                                            <div class="grid-right">
                                                <h3>User <span>Registerd</span></h3><br><br>
                                                <p><b id="rc">0</b></p><br><br>
                                                <button type="submit" onclick="countImg()" style="width:100%">Get Data</button>
                                                <script>
                                                    function countImg() {
                                                        var ccd = document.getElementById("RegisU").getElementsByTagName("tr").length;
                                                        document.getElementById("rc").innerHTML = ccd - 2;

                                                    }
                                                </script>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>

                                    <div class="col-md-3 ticket-grid" style="width: 20%">
                                        <div class="tickets">
                                            <div class="grid-left">
                                                <div class="book-icon">
                                                    <i class="fa fa-bar-chart"></i>
                                                </div>
                                            </div>
                                            <div class="grid-right">
                                                <h3>Products</h3><br><br>
                                                <p><b id="cpo">0</b></p><br><br>
                                                <button type="submit" style="width: 100%" onclick="myPro()">Get Data</button>
                                                <script>
                                                    function myPro() {
                                                        var ccd = document.getElementById("AdminTabDL").getElementsByTagName("tr").length;
                                                        document.getElementById("cpo").innerHTML = ccd - 2;

                                                    }
                                                </script>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>


                                    <div class="col-md-3 ticket-grid" style="width: 20%">
                                        <div class="tickets">
                                            <div class="grid-left">
                                                <div class="book-icon">
                                                    <i class="fa fa-rocket"></i>
                                                </div>
                                            </div>
                                            <div class="grid-right">
                                                <h3>User Products</h3><br><br>
                                                <p><b id="upd">0</b></p><br><br>
                                                <button type="submit" style="width: 100%" onclick="myUp()">Get Data</button>
                                                <script>
                                                    function myUp() {
                                                        var ccd = document.getElementById("ste").getElementsByTagName("tr").length;
                                                        document.getElementById("upd").innerHTML = ccd - 2;

                                                    }
                                                </script>                                               
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>

                                    <div class="col-md-3 ticket-grid" style="width: 20%">
                                        <div class="tickets">
                                            <div class="grid-left">
                                                <div class="book-icon">
                                                    <i class="fa fa-rocket"></i>
                                                </div>
                                            </div>
                                            <div class="grid-right">
                                                <h3>User Car Booking</h3><br><br>
                                                <p><b id="ucbd">0</b></p><br><br>
                                                <button type="submit" style="width: 100%" onclick="myCbd()">Get Data</button>
                                                <script>
                                                    function myCbd() {
                                                        var ccd = document.getElementById("bdi").getElementsByTagName("tr").length;
                                                        document.getElementById("ucbd").innerHTML = ccd - 2;

                                                    }
                                                </script>

                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>

                                    <div class="col-md-3 ticket-grid" style="width: 20%">
                                        <div class="tickets">
                                            <div class="grid-left">
                                                <div class="book-icon">
                                                    <i class="fa fa-user"></i>
                                                </div>
                                            </div>
                                            <div class="grid-right">
                                                <h3>Contact Us</h3><br><br>
                                                <p><b id="maco">0</b></p><br><br>
                                                <button type="submit" style="width: 100%" onclick="gco()">Get Data</button>
                                                <script>
                                                    function gco() {
                                                        var ccd = document.getElementById("ContactUsTable").getElementsByTagName("tr").length;
                                                        document.getElementById("maco").innerHTML = ccd - 2;

                                                    }
                                                </script>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>

                                </div>

                                <!-- //four-grids -->
                            </ul>
                        </article>
                    </div> <!--tab 1 end-->


                    <!--tab 2 started-->
                    <div id="tab-2" class="tab">
                        <article>
                            <div class="text-section">
                                <h1>Upload Image</h1>
                                <p>You have to upload image here for products.</p>
                            </div>
                            <ul class="states">
                                <div>
                                    <form id="upload-image-form" action="AdminImgData" method="post" enctype="multipart/form-data" style="border:1px solid"><br><br>
                                        <div id="image-preview-div" style="display: none">
                                            <label for="exampleInputFile">Selected image:</label>
                                            <br>
                                            <img id="preview-img" src="noimage">
                                        </div>
                                        <div class="form-group">
                                            <input type="file" name="file21" id="file" required>
                                        </div>
                                        <button class="btn btn-primary" id="upload-button" type="submit" style="width: 10%">Upload image</button>
                                    </form><br><br>
                                    <br>
                                    <div class="alert alert-info" id="loading" style="display: none;" role="alert">
                                        Uploading image...
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                            </div>
                                        </div>
                                    </div>
                                    <div id="message"></div>
                                </div>
                                <li class="error">Error : This is an error placed text message.</li>
                                <li class="warning">Warning: This is a warning placed text message.</li>
                                <li class="succes">Succes : This is a succes placed text message.</li>
                            </ul>
                        </article>
                    </div>
                    <!--tab 2 End-->


                    <!--tab 3 started-->
                    <div id="tab-3" class="tab">
                        <article>
                            <div class="text-section">
                                <h1>Product Details</h1>
                                <p>Please fill all details about product inside the form</p>
                            </div>
                            <div class="container" style="width:50%;">    
                                <div class="row">
                                    <div class="col-sm-4" style="margin-left:200px;">
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">Fill All Details of Car</div>
                                            <form action="admincdsuccess.jsp">
                                                <div class="container" style="width:190%;"><br>
                                                    <label><b>Car Name : </b></label><br>
                                                    <input type="text" placeholder="Enter Car Name" requires name="cname" /><br><br>
                                                    <label><b>Ex-Showroom Price : </b></label><br>
                                                    <input type="text" placeholder="Enter Ex-Showroom Price" required  name="csprice"/><br><br>
                                                    <label><b>RTO Price : </b></label><br>
                                                    <input type="text" placeholder="Enter RTO Price" required  name="crto"/><br><br>
                                                    <label><b>Insurance Price : </b></label><br>
                                                    <input type="text" placeholder="Enter Insurance Price" required  name="cinsurance"/><br><br>
                                                    <label><b>Other Charges : </b></label><br>
                                                    <input type="text" placeholder="Enter Other Charges" required  name="cocharge"/><br><br>                                                 
                                                    <label><b>Car on EMI : </b></label><br>
                                                    <input type="text" placeholder="Enter EMI" required name="cemi"/><br><br>
                                                    <label><b>Car on Road Price : </b></label><br>
                                                    <input type="text" placeholder="Enter Road Price" required name="croadp"/><br><br>
                                                    <label><b>Car Registration Year: </b></label><br>
                                                    <input type="text" placeholder="Enter Registration Year" required name="cryear"/><br><br>
                                                    <label><b>Car Brand/Model : </b></label><br>
                                                    <input type="text" placeholder="Enter Brand/Model" required name="cbrand"/><br><br>
                                                    <label><b>Car Color : </b></label><br>
                                                    <input type="text" placeholder="Enter Color" required name="ccolor"/><br><br>
                                                    <label><b>Car Ownership : </b></label><br>
                                                    <input type="text" placeholder="Enter Ownership" required name="cownership"/><br><br>

                                                    <button type="submit" style="width: 10%">Submit</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div>
                    <!--tab 3 end-->


                    <!--tab 4 started-->
                    <div id="tab-4" class="tab">
                        <article>
                            <div class="text-section">
                                <h1>All User Details</h1>
                                <p>There are all detail of the users.</p>
                            </div>
                            <ul class="states">
                                <%
                                    String id = request.getParameter("mail");
                                    String driverName = "org.apache.derby.jdbc.ClientDriver";
                                    String connectionUrl = "jdbc:derby://localhost:1527/";
                                    String dbName = "sample";
                                    String userId = "app";
                                    String password = "app";

                                    try {
                                        Class.forName(driverName);
                                    } catch (ClassNotFoundException e) {
                                        e.printStackTrace();
                                    }

                                    Connection connection = null;
                                    Statement statement = null;
                                    ResultSet resultSet = null;
                                %>
                                <h2 align="center"><font><strong>All Registered Users Detail</strong></font></h2><br><br>
                                <table align="center" cellpadding="5" cellspacing="5" border="1"id="RegisU" >
                                    <tr>

                                    </tr>
                                    <tr bgcolor="#808B96" style="color:white">
                                        <td><b>Name</b></td>
                                        <td><b>Contact</b></td>
                                        <td><b>Email-Id</b></td>
                                        <td><b>Password</b></td>
                                    </tr>
                                    <%
                                        try {
                                            connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                                            statement = connection.createStatement();
                                            String sql = "SELECT * FROM registerdata";

                                            resultSet = statement.executeQuery(sql);
                                            while (resultSet.next()) {
                                    %>
                                    <tr bgcolor="#DEB887" style="color:white">

                                        <td><%=resultSet.getString("name")%></td>
                                        <td><%=resultSet.getString("contact")%></td>
                                        <td><%=resultSet.getString("mail")%></td>
                                        <td><%=resultSet.getString("pass")%></td>

                                    </tr>

                                    <%
                                            }

                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    %>
                                </table>
                                <div class="pagination">
                                    <a href="#">&laquo;</a>
                                    <a href="#">1</a>
                                    <a class="active" href="#">2</a>
                                    <a href="#">3</a>
                                    <a href="#">4</a>
                                    <a href="#">5</a>
                                    <a href="#">6</a>
                                    <a href="#">&raquo;</a>
                                </div>
                                <center><button type="submit" style="width: 10%" onclick="myRegisUser()">Count Data</button></center>
                                <script>
                                    function myRegisUser() {
                                        var ccd = document.getElementById("RegisU").getElementsByTagName("tr").length;
                                        document.getElementById("RegisCount").innerHTML = ccd - 2;
                                    }
                                </script>
                            </ul>
                        </article>
                    </div>
                    <!--tab 4 end-->


                    <!--tab 5 started-->
                    <div id="tab-5" class="tab">
                        <article>
                            <div class="text-section">
                                <h1>All Product Details</h1>
                                <p>There are detail of All Cars</p>
                            </div>
                            <ul class="states">
                                <%
                                    String idcd = request.getParameter("cemi");
                                    String driverNamecd = "org.apache.derby.jdbc.ClientDriver";
                                    String connectionUrlcd = "jdbc:derby://localhost:1527/";
                                    String dbNamecd = "sample";
                                    String userIdcd = "app";
                                    String passwordcd = "app";

                                    try {
                                        Class.forName(driverNamecd);
                                    } catch (ClassNotFoundException e) {
                                        e.printStackTrace();
                                    }

                                    Connection connectioncd = null;
                                    Statement statementcd = null;
                                    ResultSet resultSetcd = null;
                                %>
                                <h2 align="center"><font><strong>All Cars Detail Store by Admin</strong></font></h2><br><br>
                                <table align="center" cellpadding="5" cellspacing="5" border="1" id="AdminTabDL">
                                    <tr>

                                    </tr>
                                    <tr bgcolor="#808B96" style="color:white">
                                        <td><b>Car Name</b></td>
                                        <td><b>Car Ex-Showroom Price</b></td>
                                        <td><b>RTO Charge</b></td>
                                        <td><b>Insurance Charge</b></td>
                                        <td><b>Other Charge</b></td>
                                        <td><b>Car EMI</b></td>
                                        <td><b>Car on Road Price</b></td>
                                        <td><b>Car Registration Year</b></td>
                                        <td><b>Car Brand/Model</b></td>
                                        <td><b>Car Color</b></td>
                                        <td><b>Car Ownership</b></td>
                                    </tr>
                                    <%
                                        try {
                                            connectioncd = DriverManager.getConnection(connectionUrlcd + dbNamecd, userIdcd, passwordcd);
                                            statementcd = connection.createStatement();
                                            String sqlcd = "SELECT * FROM admincdl";

                                            resultSetcd = statement.executeQuery(sqlcd);
                                            while (resultSetcd.next()) {
                                    %>
                                    <tr bgcolor="#DEB887" style="color:white">

                                        <td><%=resultSetcd.getString("cname")%></td>
                                        <td><%=resultSetcd.getString("csprice")%></td>
                                        <td><%=resultSetcd.getString("crto")%></td>
                                        <td><%=resultSetcd.getString("cinsurance")%></td>
                                        <td><%=resultSetcd.getString("cocharge")%></td>
                                        <td><%=resultSetcd.getString("cemi")%></td>
                                        <td><%=resultSetcd.getString("croadp")%></td>
                                        <td><%=resultSetcd.getString("cryear")%></td>
                                        <td><%=resultSetcd.getString("cbrand")%></td>
                                        <td><%=resultSetcd.getString("ccolor")%></td>
                                        <td><%=resultSetcd.getString("cownership")%></td>

                                    </tr>

                                    <%
                                            }

                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    %>
                                </table>
                                <center><button type="submit" style="width: 10%" onclick="myAdl()">Count Data</button></center>
                                <script>
                                    function myAdl() {
                                        var ccd = document.getElementById("AdminTabDL").getElementsByTagName("tr").length;
                                        document.getElementById("AdetalsCount").innerHTML = ccd - 2;

                                    }
                                </script>
                            </ul>
                        </article>
                    </div>
                    <!--tab 5 end-->


                    <!--tab 6 started-->
                    <div id="tab-6" class="tab">
                        <article>
                            <div class="text-section">
                                <h1>All Sale Details</h1>
                                <p>This is a quick overview of some features</p>
                            </div>
                            <ul class="states">
                                <%
                                    String sid = request.getParameter("cry");
                                    String sdriverName = "org.apache.derby.jdbc.ClientDriver";
                                    String sconnectionUrl = "jdbc:derby://localhost:1527/";
                                    String sdbName = "sample";
                                    String suserId = "app";
                                    String spassword = "app";

                                    try {
                                        Class.forName(sdriverName);
                                    } catch (ClassNotFoundException e) {
                                        e.printStackTrace();
                                    }

                                    Connection sconnection = null;
                                    Statement sstatement = null;
                                    ResultSet sresultSet = null;
                                %>
                                <h2 align="center"><font><strong>All Products Detail for Sale by User Inserted</strong></font></h2><br><br>
                                <table align="center" cellpadding="1" cellspacing="2" border="1" id="ste">
                                    <tr>

                                    </tr>
                                    <tr bgcolor="#808B96" style="color:white;overflow-x:auto;">
                                        <td><b>Car_Registration_Year</b></td>
                                        <td><b>Car Brand</b></td>
                                        <td><b>Car Varient</b></td>
                                        <td><b>Kilometer Driven</b></td>
                                        <td><b>Car Color</b></td>
                                        <td><b>Car Ownership</b></td>
                                        <td><b>City</b></td>
                                        <td><b>Pincode</b></td>
                                        <td><b>Expected Price</b></td>
                                        <td><b>Seller Name</b></td>
                                        <td><b>Seller Mail</b></td>
                                        <td><b>Seller Contact</b></td>
                                    </tr>
                                    <%
                                        try {
                                            sconnection = DriverManager.getConnection(sconnectionUrl + sdbName, suserId, spassword);
                                            sstatement = sconnection.createStatement();
                                            String ssql = "SELECT * FROM salersellingdata";

                                            sresultSet = sstatement.executeQuery(ssql);
                                            while (sresultSet.next()) {
                                    %>
                                    <tr bgcolor="#DEB887" style="color:white">

                                        <td><%=sresultSet.getString("cry")%></td>
                                        <td><%=sresultSet.getString("cb")%></td>
                                        <td><%=sresultSet.getString("cv")%></td>
                                        <td><%=sresultSet.getString("ckd")%></td>
                                        <td><%=sresultSet.getString("cc")%></td>
                                        <td><%=sresultSet.getString("co")%></td>
                                        <td><%=sresultSet.getString("ccity")%></td>
                                        <td><%=sresultSet.getString("cpin")%></td>
                                        <td><%=sresultSet.getString("xe")%></td>
                                        <td><%=sresultSet.getString("naam")%></td>
                                        <td><%=sresultSet.getString("gmail")%></td>
                                        <td><%=sresultSet.getString("mobile")%></td>
                                    </tr>

                                    <%
                                            }

                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    %>
                                </table>
                                <center><button type="submit" style="width: 10%" onclick="mus()">Count Data</button></center>
                                <script>
                                    function mus() {
                                        var usd = document.getElementById("ste").getElementsByTagName("tr").length;
                                        document.getElementById("usds").innerHTML = usd - 2;

                                    }
                                </script>

                            </ul>
                        </article>
                    </div>
                    <!--tab 6 end-->

                    <!--tab 7 started-->
                    <div id="tab-7" class="tab">
                        <article>
                            <div class="text-section">
                                <h1>All Contact_us Details</h1>
                                <p>Detail of the users who want to Contact Us</p>
                            </div>
                            <ul class="states">
                                <%
                                    String cuid = request.getParameter("name");
                                    String cudriverName = "org.apache.derby.jdbc.ClientDriver";
                                    String cuconnectionUrl = "jdbc:derby://localhost:1527/";
                                    String cudbName = "sample";
                                    String cuuserId = "app";
                                    String cupassword = "app";

                                    try {
                                        Class.forName(cudriverName);
                                    } catch (ClassNotFoundException e) {
                                        e.printStackTrace();
                                    }

                                    Connection cuconnection = null;
                                    Statement custatement = null;
                                    ResultSet curesultSet = null;
                                %>
                                <h2 align="center"><font><strong>All Users Details who want to Contact Us</strong></font></h2><br><br>
                                <table align="center" cellpadding="5" cellspacing="5" border="1" id="ContactUsTable">
                                    <tr>

                                    </tr>
                                    <tr bgcolor="#808B96" style="color:white">
                                        <td><b>Name</b></td>
                                        <td><b>Contact</b></td>
                                        <td><b>Email</b></td>
                                        <td><b>Message</b></td>
                                    </tr>
                                    <%
                                        try {
                                            connectioncd = DriverManager.getConnection(cuconnectionUrl + cudbName, cuuserId, cupassword);
                                            custatement = connection.createStatement();
                                            String cusql = "SELECT * FROM contactus";

                                            curesultSet = custatement.executeQuery(cusql);
                                            while (curesultSet.next()) {
                                    %>
                                    <tr bgcolor="#DEB887" style="color:white">

                                        <td><%=curesultSet.getString("name")%></td>
                                        <td><%=curesultSet.getString("contact")%></td>
                                        <td><%=curesultSet.getString("email")%></td>
                                        <td><%=curesultSet.getString("message")%></td>

                                    </tr>

                                    <%
                                            }

                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    %>
                                </table>

                                <center><button type="submit" style="width: 10%" onclick="myContact()">Count Data</button></center>
                                <script>
                                    function myContact() {
                                        var ccd = document.getElementById("ContactUsTable").getElementsByTagName("tr").length;
                                        document.getElementById("contctCount").innerHTML = ccd - 2;

                                    }
                                </script>
                            </ul>
                        </article>
                    </div>
                    <!--tab 7 end-->


                    <!--tab 8 started-->
                    <div id="tab-8" class="tab">
                        <article>
                            <div class="text-section">
                                <h1>All Buyers Detail</h1>
                                <p>There are details of the buyer who want to buy car</p>
                            </div>
                            <ul class="states">

                                <%
                                    String bduid = request.getParameter("name");
                                    String bddriverName = "org.apache.derby.jdbc.ClientDriver";
                                    String bdconnectionUrl = "jdbc:derby://localhost:1527/";
                                    String bddbName = "sample";
                                    String bduserId = "app";
                                    String bdpassword = "app";

                                    try {
                                        Class.forName(bddriverName);
                                    } catch (ClassNotFoundException e) {
                                        e.printStackTrace();
                                    }

                                    Connection bdconnection = null;
                                    Statement bdstatement = null;
                                    ResultSet bdresultSet = null;
                                %>
                                <h2 align="center"><font><strong>All Buyers Detail who want to Buy Car</strong></font></h2><br><br>
                                <table align="center" cellpadding="5" cellspacing="5" border="1" id="bdi">
                                    <tr>

                                    </tr>
                                    <tr bgcolor="#808B96" style="color:white">
                                        <td><b>Buyer Name</b></td>
                                        <td><b>Buyer Email</b></td>
                                        <td><b>Buyer Contact</b></td>
                                        <td><b>Buyer Message</b></td>
                                    </tr>
                                    <%
                                        try {
                                            bdconnection = DriverManager.getConnection(bdconnectionUrl + bddbName, bduserId, bdpassword);
                                            bdstatement = bdconnection.createStatement();
                                            String bdsql = "SELECT * FROM finalbooking";

                                            bdresultSet = bdstatement.executeQuery(bdsql);
                                            while (bdresultSet.next()) {
                                    %>
                                    <tr bgcolor="#DEB887" style="color:white">

                                        <td><%=bdresultSet.getString("bname")%></td>
                                        <td><%=bdresultSet.getString("bemail")%></td>
                                        <td><%=bdresultSet.getString("bnumber")%></td>
                                        <td><%=bdresultSet.getString("bcomment")%></td>

                                    </tr>

                                    <%
                                            }

                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    %>
                                </table>
                                <center><button type="submit" style="width: 10%" onclick="bsd()">Count Data</button></center>
                                <script>
                                    function bsd() {
                                        var usd = document.getElementById("bdi").getElementsByTagName("tr").length;
                                        document.getElementById("bdc").innerHTML = usd - 2;

                                    }
                                </script>                            </ul>
                        </article>
                    </div>
                    <!--tab 8 end-->
                </div>
            </div>
        </div>
        <aside id="sidebar">
            <strong class="logo"><a href="#">lg</a></strong>
            <ul class="tabset buttons">
                <li class="active">
                    <a href="#tab-1" class="ico1"><span>Dashboard</span><em></em></a>
                    <span class="tooltip"><span>Dashboard</span></span>
                </li>
                <li>
                    <a href="#tab-2" class="ico2"><span>Upload Image</span><em></em></a>
                    <span class="tooltip"><span>Image Upload</span></span>
                </li>
                <li>
                    <a href="#tab-3" class="ico3"><span>Upload Product Details</span><em></em></a>
                    <span class="tooltip"><span>Upload Product Details</span></span>
                </li>
                <li>
                    <a href="#tab-4" class="ico4"><span>All User Details</span><em></em></a>
                    <span class="tooltip"><span>All User Details</span></span>
                </li>
                <li>
                    <a href="#tab-5" class="ico5"><span>All Car Details</span><em></em></a>
                    <span class="tooltip"><span>All Car Details</span></span>
                </li>
                <li>
                    <a href="#tab-6" class="ico6">
                        <span>All Sale Details</span><em></em>
                    </a>
                    <span class="tooltip"><span>All Sale Details</span></span>
                </li>
                <li>
                    <a href="#tab-7" class="ico7"><span>All Contact us Details</span><em></em></a>
                    <span class="tooltip"><span>All Contact us Details</span></span>
                </li>
                <li>
                    <a href="#tab-8" class="ico8"><span>All Buyers Detail</span><em></em></a>
                    <span class="tooltip"><span>All Buyers Detail</span></span>
                </li>
            </ul>
            <span class="shadow"></span>
        </aside>
    </div>
</body>
</html>