package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.IOException;
import java.io.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_import_url_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_import_url_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_import_url_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("      \n");
      out.write("      ");
      if (_jspx_meth_c_import_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/bootstrap.css\" />\n");
      out.write("          <script src=\"https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js\"></script>\n");
      out.write("    <title>Home Page</title>\n");
      out.write("     \n");
      out.write(" \n");
      out.write("  </head>\n");
      out.write("  <body ng-app=\"myApp\">\n");
      out.write("\n");
      out.write("<div class=\"container-fluid top_bar\" id=\"homeID\">\n");
      out.write("<div class=\"container\"> \n");
      out.write("<div class=\"row\">\n");
      out.write("<div class=\"col-sm-3\">\n");
      out.write(" <a href=\"https://www.facebook.com\" class= \"social_icon\"> <i class=\"fa fa-facebook\" style =\"color:#fff; size:17px; font-size:17px\"></i></a>\n");
      out.write(" <a href=\"https://www.twitter.com\" class= \"social_icon\"> <i class=\"fa fa-twitter\" style =\"color:#fff; size:17px; font-size:17px\"></i></a>\n");
      out.write(" <a href=\"https://www.youtube.com\" class= \"social_icon\"> <i class=\"fa fa-youtube-play\" style =\"color:#fff; size:17px; font-size:17px\"></i></a>\n");
      out.write(" <a href=\"https://www.gmail.com\" class= \"social_icon\"> <i class=\"fa fa-google-plus\" style =\"color:#fff; size:17px; font-size:17px\"></i></a>\n");
      out.write("</div>\n");
      out.write("<div class=\"col-sm-9 text-right contact_info\">\n");
      out.write("<span class=\"glyphicon glyphicon-envelope\"></span>  carliker@gmail.com,    \n");
      out.write("<span class=\"glyphicon glyphicon-earphone\"></span>  +91-9560739311\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div> <!--end of header-->\n");
      out.write("<!--Navigation Section Start-->\n");
      out.write("\t<div class=\"container\">\n");
      out.write("        <div class=\" col-sm-4 row\">\n");
      out.write("            <div class=\"col-sm-4\">\n");
      out.write("                <div class=\"row thumbnail text-center\">\n");
      out.write("                 <img alt=\"\" class=\"img-responsive\" src=\"images/navback.png\" width=\"100%\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\t\t</div>\n");
      out.write("    </div>\n");
      out.write("\t\t\t\n");
      out.write("<!--navigation section end -->\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-inverse\" style=\"margin-bottom:0px;\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>                        \n");
      out.write("      </button>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("<a class=\"navbar-brand\" href=\"#\" style=\"color:#17A589\">Car Liker</a>\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"active\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("        <li><a href=\"buy_product.jsp\">Buy Products</a></li>\n");
      out.write("        <li><a href=\"sale_products.jsp\">Sale Products</a></li>\n");
      out.write("        <li><a href=\"about_us.jsp\">About Us</a></li>\n");
      out.write("        <li><a href=\"contact_us.jsp\">Contact Us</a></li>\n");
      out.write("      </ul>\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\n");
      out.write("          <!-- User Nmae -->\n");
      out.write("          <li><a href=\"#\"><span class=\"glyphicon glyphicon-user\"></span> <b style=\"color:green\">Welcome </b><b style=\"color:Orange\"> ");
      out.print( request.getSession().getAttribute("userdb") );
      out.write("</b></a></li>\n");
      out.write("    \t\n");
      out.write("\n");
      out.write("<!-- User Logout Button -->\n");
      out.write("\t<li ><a href=\"loginform.jsp\"><span class=\"glyphicon glyphicon-log-out\"></span> Logout</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--navigation section end -->\n");
      out.write("<!--HOME PAGE-->  \n");
      out.write("  <div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("    <!-- Indicators -->\n");
      out.write("    <ol class=\"carousel-indicators\">\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\n");
      out.write("\t        <li data-target=\"#myCarousel\" data-slide-to=\"3\"></li>\n");
      out.write("\t\t\t      <li data-target=\"#myCarousel\" data-slide-to=\"4\"></li>\n");
      out.write("    </ol>\n");
      out.write("\n");
      out.write("    <!-- Wrapper for slides -->\n");
      out.write("    <div class=\"carousel-inner\">\n");
      out.write("\n");
      out.write("      <div class=\"item active\">\n");
      out.write("        <img src=\"images/slide2.jpg\" alt=\"Los Angeles\" style=\"width:100%;\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("          <h5>Welcome</h5>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("\t        <div class=\"item\">\n");
      out.write("        <img src=\"images/slide1.jpg\" alt=\"Chicago\" style=\"width:100%;\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("          <h5>Thanks for visit our website</h5>\n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\t  \n");
      out.write("\t        <div class=\"item\">\n");
      out.write("        <img src=\"images/slide3.jpg\" alt=\"Chicago\" style=\"width:100%;\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("          <h5>Feel free to contact us</h5>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\t  \n");
      out.write("      <div class=\"item\">\n");
      out.write("        <img src=\"images/slide4.jpg\" alt=\"Chicago\" style=\"width:100%;\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("          <h5>Get more details of car on BUY PRODUCTS</h5>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    \n");
      out.write("      <div class=\"item\">\n");
      out.write("        <img src=\"images/slide5.jpg\" alt=\"New York\" style=\"width:100%;\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("          <h5>Thanks a lot!!</h5>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("    <!-- Left and right controls -->\n");
      out.write("    <a class=\"left carousel-control\" href=\"#myCarousel\" data-slide=\"prev\">\n");
      out.write("      <span class=\"glyphicon glyphicon-chevron-left\"></span>\n");
      out.write("      <span class=\"sr-only\">Previous</span>\n");
      out.write("    </a>\n");
      out.write("    <a class=\"right carousel-control\" href=\"#myCarousel\" data-slide=\"next\">\n");
      out.write("      <span class=\"glyphicon glyphicon-chevron-right\"></span>\n");
      out.write("      <span class=\"sr-only\">Next</span>\n");
      out.write("    </a>\n");
      out.write("  </div>\n");
      out.write("<!--HOME PAGE END-->\n");
      out.write("\n");
      out.write("<hr>\n");
      out.write("<div class=\"container\"> \n");
      out.write("<div class=\"row\" >\n");
      out.write("<div class=\"col-sm-8\">\n");
      out.write("<h1>Welcome to Sale & Buy Car</h1>\n");
      out.write("<p>At Scrubs, we know your time is valuable. Having to take your car in to get washed and detailed is typically a hassle. Even going out without your vehicle for a few hours can be inconvenient at the best of times. Not only do we offer some of the most competitive car detailing prices on the market, but a fully mobile service that comes to you, with all the necessary cleaning products and gear for a professional job that will leave your car shining.\n");
      out.write("\n");
      out.write("Don't spend your valuable time having to work out transport options to drop off and pick up your car when you need it sparkling cleaned and polished. Simply arrange a scheduled time and we will come to your property. Do you commute to work? No problem either! We are more than happy to come to your office or workplace and detail your car while you get on with business. At the end of the day, drive away in your newly cleaned and polished car with no problems.\n");
      out.write("\n");
      out.write("Over the years, we have heavily invested in quality equipment and have specially designed vehicles to cater for most mobile situations. Our minivan can fit into the smallest backyard and our 4x4 ute has inbuilt power and water with extra storage for any situation.\n");
      out.write("\n");
      out.write("Never again spend needless time organising and coordinating to get your car to a location, Scrubs has ready professionals to fit into just about any space!\n");
      out.write("\n");
      out.write("Professional service using industry leading products and equipment.\n");
      out.write("\n");
      out.write("Car detailing is more than a service; it's an art form. This is why Scrubs only use passionate, experienced detailers to work on your vehicle. They have the required knowledge and specialised skill to get the ideal results for your car, no matter what package option you choose from us.</p>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"col-sm-4\">\n");
      out.write("<img src=\"images/backnavv.jpg\" class=\"imghome\" alt=\"\" />\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<hr>\n");
      out.write("\n");
      out.write("<div class=\"container-fluid\">\n");
      out.write("  <div id=\"myCarousel1\" class=\"carousel slide\" data-ride=\"carousel\" data-interval=\"false\">\n");
      out.write("    <!-- Wrapper for slides -->\n");
      out.write("    <div class=\"carousel-inner\">\n");
      out.write("      <div class=\"item active\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-3\">\n");
      out.write("        <img src=\"images/ccad.png\" class=\"listH\" alt=\"Los Angeles\" style=\"width:100%;\">\n");
      out.write("      </div>\n");
      out.write("        \n");
      out.write("        <div class=\"col-sm-3\">\n");
      out.write("        <img src=\"images/cclr.jpg\" class=\"listH\" alt=\"Los Angeles\" style=\"width:100%;\">\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"col-sm-3\">\n");
      out.write("        <img src=\"images/cch.png\" class=\"listH\" alt=\"Los Angeles\" style=\"width:100%;\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("            <marquee direction=\"right\"><h5 style=\"color:#F1C40F; margin-right: 100px;\"><b></b></h5></marquee>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("                <div class=\"col-sm-3\">\n");
      out.write("        <img src=\"images/ccjag.png\" class=\"listH\" alt=\"Los Angeles\" style=\"width:100%;\">\n");
      out.write("        </div>\n");
      out.write("                \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("<div class=\"item\">\n");
      out.write("\n");
      out.write("                <div class=\"col-sm-3\">\n");
      out.write("        <img src=\"images/ccmahi.png\" class=\"listH\" alt=\"Los Angeles\" style=\"width:100%;\">\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("                <div class=\"col-sm-3\">\n");
      out.write("        <img src=\"images/ccmer.png\" alt=\"Los Angeles\" class=\"listH\" style=\"width:100%;\">\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("      <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-3\">\n");
      out.write("        <img src=\"images/ccms.jpg\" alt=\"Los Angeles\" class=\"listH\" style=\"width:100%;\">\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"col-sm-3\">\n");
      out.write("        <img src=\"images/cctt.png\" alt=\"Los Angeles\" class=\"listH\" style=\"width:100%;\">\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("</div><hr>\n");
      out.write("\n");
      out.write("    <!-- Left and right controls -->\n");
      out.write("\n");
      out.write("\t<a class=\"left slide-control\" href=\"#myCarousel1\" role=\"button\" data-slide=\"prev\"><i class=\"fa fa-angle-left\"></i></a>\n");
      out.write("    <a class=\"right slide-control\" href=\"#myCarousel1\" role=\"button\" data-slide=\"next\"><i class=\"fa fa-angle-right\"></i></a>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<!--Footer section start -->\n");
      out.write("<footer class=\"container-fluid text-center\" >\n");
      out.write("  <h4><i><b>Online b&s cars</b></i></h4>  \n");
      out.write("  <form class=\"form-inline\"><b>Get deals:</b>\n");
      out.write("    <input type=\"email\" class=\"form-control\" size=\"50\" placeholder=\"Enter your email-id\" required>\n");
      out.write("    <button type=\"button\" class=\"btn btn-danger lastbtn\">Subscribe now</button>\n");
      out.write("  </form>\n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("<!--latest footer at bottom start -->\n");
      out.write("<div class=\"container-fluid footer\" style=\"background-color:#145A32;\">\n");
      out.write("<div class=\"container-fluid\">\n");
      out.write("<div class=\"col-sm-4\">\n");
      out.write("<img src=\"images/footpic.jpg\" alt=\"\" class=\"img-responsive\" />\n");
      out.write("<p>At Scrubs, we know your time is valuable. Having to take your car in to get washed and detailed is typically a hassle. Even going out without your vehicle for a few hours can be inconvenient at the best of times....</p>\n");
      out.write("\n");
      out.write("<p><a href=\"#\" class=\"btn btn-danger\" >Read More...</a></p>\n");
      out.write("</div>\n");
      out.write("<div class=\"col-sm-4 midfooter\">\n");
      out.write("<h3>Quick Links</h3>\n");
      out.write("<ul>\n");
      out.write("<li><a href=\"index.jsp\">&raquo; Home </a></li>\n");
      out.write("<li><a href=\"buy_product.jsp\">&raquo; Buy Products</a></li>\n");
      out.write("<li><a href=\"about_us.jsp\">&raquo; About Us</a></li>\n");
      out.write("<li><a href=\"contact_us.jsp\">&raquo; Contact Us</a></li>\n");
      out.write("</ul>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<div class=\"col-sm-4\"></div>\n");
      out.write("<h3>Contact Details</h3>\n");
      out.write("<p>Address : </strong> Chhattarpur new delhi(Delhi,India)(Delhi,India)</p>\n");
      out.write("<p>Email : </strong> Carliker@gmail.com</p>\n");
      out.write("<p>Phone : </strong> 9560739311</p>\n");
      out.write("<p style=\"text-align: right; margin-right: 60px;\">Timing : </strong> 9:30am to 6:30pm</p>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("      \n");
      out.write("<!--footer section end -->\n");
      out.write("\n");
      out.write("    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
      out.write("    <!-- Include all compiled plugins (below), or include individual files as needed -->\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("         \n");
      out.write("\n");
      out.write("        var app=angular.module(\"myApp\",['ngRoute']);\n");
      out.write("\tapp.config(function($routeProvider)\n");
      out.write("{\n");
      out.write("\t\t$routeProvider\n");
      out.write("\t\t.when('/',{\n");
      out.write("\t\t\ttemplateUrl:'index.html',\n");
      out.write("\t\t\tcontroller:'myrefreshcontroller'\n");
      out.write("\n");
      out.write("\t\t})\n");
      out.write("                        .otherwise(\n");
      out.write("                        {\n");
      out.write("                            controller:'nextcontroller'\n");
      out.write("                        });\n");
      out.write("\t\n");
      out.write("});\n");
      out.write("\n");
      out.write("\tapp.controller(\"myrefreshController\",function($scope,$location)\n");
      out.write("\t{\n");
      out.write("\t\t\n");
      out.write("\t\t\t$location.path('/')\n");
      out.write("\t\t\t{\n");
      out.write("                            //$route.reload();\n");
      out.write("                           setTimeout(function() {\n");
      out.write("\t\t\t\t\t\tlocation.reload();  // this method for refresh the page \n");
      out.write("\t\t\t\t\t}, \n");
      out.write("\t\t\t\t\t40000);\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\n");
      out.write("\t\t}\n");
      out.write("\t});\n");
      out.write("            app.controller(\"nextcontroller\",function ($scope,$location)\n");
      out.write("            {\n");
      out.write("                            \n");
      out.write("                     setTimeout(function ()\n");
      out.write("                            {\n");
      out.write("                              // location.reload();\n");
      out.write("                                    },2000) \n");
      out.write("                            \n");
      out.write("                });\n");
      out.write("       \n");
      out.write("    </script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_import_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:import
    org.apache.taglibs.standard.tag.rt.core.ImportTag _jspx_th_c_import_0 = (org.apache.taglibs.standard.tag.rt.core.ImportTag) _jspx_tagPool_c_import_url_nobody.get(org.apache.taglibs.standard.tag.rt.core.ImportTag.class);
    _jspx_th_c_import_0.setPageContext(_jspx_page_context);
    _jspx_th_c_import_0.setParent(null);
    _jspx_th_c_import_0.setUrl("head-meta.jsp");
    int[] _jspx_push_body_count_c_import_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_import_0 = _jspx_th_c_import_0.doStartTag();
      if (_jspx_th_c_import_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_import_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_import_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_import_0.doFinally();
      _jspx_tagPool_c_import_url_nobody.reuse(_jspx_th_c_import_0);
    }
    return false;
  }
}
