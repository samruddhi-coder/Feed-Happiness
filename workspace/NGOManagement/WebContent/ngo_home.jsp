<!DOCTYPE html>
<html lang="en">
  <%@page import="java.sql.*" %>
<head>
<meta charset="utf-8">
<title>Varna - Charity HTML Template | Causes Grid</title>

<!-- Stylesheets -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">

<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
<link rel="icon" href="images/favicon.png" type="image/x-icon">
<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
</head>

<body>
<%%>
<div class="page-wrapper">
    <!-- Preloader -->
    <div class="preloader"></div>
    
   <!-- Main Header-->
   <header class="main-header">

        <!-- Header Lower -->
        <div class="header-lower">
            <div class="main-box clearfix">
                <!--Logo Box-->
                <div class="logo-box">
                    <div class="logo"><a href="index.html"><img src="images/logo.png" alt=""></a></div>
                </div>
                <!--Nav Outer-->
                <div class="nav-outer clearfix">
                    <!-- Main Menu -->
                    <nav class="main-menu">
                        <div class="navbar-header">
                            <!-- Toggle Button -->
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        
                        <div class="navbar-collapse collapse clearfix">
                            <ul class="navigation clearfix">
                                <li class="current dropdown"><a href="ngo_home.jsp">Dashboard</a>
                                 
                                </li>
                                <li><a href="about.html">About us</a></li>
                               
                                <li><a href="contact.html">Contact Us</a></li>
                                 <li><a href="/NGO_Management/LogoutServlet">Logout</a></li>
                            </ul>
                        </div>
                    </nav>
                    <!-- Main Menu End-->
                </div>
            </div>
        </div>

        <!-- Sticky Header -->
        <div class="sticky-header">
            <div class="auto-container clearfix">
                <!--Logo-->
                <div class="logo pull-left">
                    <a href="index.html" title=""><img src="images/logo-small.png" alt="" title=""></a>
                </div>
                <!--Right Col-->
                <div class="pull-right">
                    <!-- Main Menu -->
                    <nav class="main-menu">
                        <div class="navbar-collapse collapse clearfix">
                            <ul class="navigation clearfix">
                                <li class="current dropdown"><a href="ngo_home.jsp">Dashboard</a>
                                </li>
                                <li><a href="about.html">About us</a></li>
                                
                                <li><a href="contact.html">Contact Us</a></li>
                                 <li><a href="/NGO_Management/LogoutServlet">Logout</a></li>
                            </ul>
                        </div>
                    </nav><!-- Main Menu End-->
                </div>
            </div>
        </div>
    </header>
    <!--End Main Header -->

     <!--Page Title-->
    <section class="page-title" style="background-image:url(images/background/13.jpg);">
        <div class="auto-container">
            <h1>Donation List </h1>
            <ul class="bread-crumb clearfix">
                <li><a href="ngo_home.jsp">Dashboard</a></li>
                <li><a href="/NGO_Management/LogoutServlet">Logout</a></li>
            </ul>
        </div>
    </section>
    <!--End Page Title-->

     <!-- Causes Section -->
     <section class="causes-section">
    <div class="auto-container">
    	<div class="causes-grid">
            <div class="row clearfix">
     <% Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngo", "root", "");
//out.println("<p>connection successful !!!</p>");
 String sql = "Select customer_registration.name,customer_registration.contact_no,customer_registration.city,donation.description,donation.catagory1,donation.catagory2,donation.catagory3,donation.catagory4,donation.food_exp,donation.creation_date from customer_registration INNER JOIN donation ON customer_registration.id= donation.cust_id";
PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
ResultSet rs = pstm.executeQuery();
while (rs.next()) {%>
	
                <!-- Cause Block -->
                <div class="cause-block col-md-4 col-sm-6 col-xs-12">
                    <div class="inner-box">
                       
                        <div class="lower-content">
                            <h2><a href="#"><%=rs.getString("name") %></a></h2>
                            <p><%= rs.getString("description") %></p>
                            <p>Category :
                           <%if(rs.getInt("catagory1")==1)
                        	   {
                        	   out.print("Cloth,");
                        	   }
                          if(rs.getInt("catagory2")==1)
                           {
                        	   
                        	   out.print(" Grain food,");
                           }if(rs.getInt("catagory3")==1)
                           {
                        	   
                        	   out.print(" Cooked food,");
                           }
                           if(rs.getInt("catagory4")==1)
                           {
                        	   
                        	   out.print(" Other");
                           }
                        	   %>
                        	   </p>
                        	                         <%String sql1 = "Select city_name from cities where id="+rs.getInt("city");
                        	                         PreparedStatement pstm1 = (PreparedStatement) con.prepareStatement(sql1);
                        	                        ResultSet rs1 = pstm1.executeQuery();
                        	                         if(rs1.next())
                        	                         {%>       
                            <div class="info-box clearfix">
                                <a href="#" class="raised">City Name: <span><%=rs1.getString("city_name") %></span></a>
                                <%} %>
                                <a href="#" class="goal">Contact No: <span><%=rs.getString("contact_no") %></span></a>
                            </div>  
                            
                             <div class="info-box clearfix">
                                <a href="#" class="raised">Pickup Date: <span><%=rs.getString("food_exp") %></span></a>
                               
                                <a href="#" class="goal">Booking Date: <span><%=rs.getString("creation_date") %></span></a>
                            </div>  
                        </div>
                    </div>
          </div>
<%}
pstm.close();
con.close();%>
          

            </div>
    	</div>
    </div>
        	<div class="styled-pagination text-center">
                <ul class="clearfix">
                    <li class="prev"><a href="#">Prev</a></li>
                    <li><a href="#" class="active">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#" >3</a></li>
                    <li class="next"><a href="#">Next</a></li>
                </ul>
            </div>
        </div>
    </section>
    <!-- End Causes Section -->

    <!--Main Footer-->
    <footer class="main-footer" style="background-image: url(images/background/2.jpg);">
        <!--Upper-->
        <div class="footer-upper">
            <div class="auto-container">
                <div class="outer-box">
                    <!--Footer Logo-->
                    <div class="footer-logo"><a href="index.html"><img src="images/footer-logo.png" alt=""></a></div>
                    
                    <div class="row clearfix">
                        <div class="big-column col-md-5 col-sm-12 col-xs-12">
                            <div class="row clearfix">
                                <!--Footer Column-->
                                <div class="footer-column col-md-6 col-sm-6 col-xs-12">
                                    <h3>Menu</h3>
                                    <ul class="footer-links">
                                        <li><a href="#">Home</a></li>
                                        <li><a href="#">About Us</a></li>
                                        <li><a href="#">Causes</a></li>
                                        <li><a href="#">Events</a></li>
                                        <li><a href="#">Blogs</a></li>
                                        <li><a href="#">Contact Us</a></li>
                                    </ul> 
                                </div>

                                <div class="footer-column col-md-6 col-sm-6 col-xs-12">
                                    <h3>Follow</h3>
                                    <ul class="footer-links">
                                        <li><a href="#">Facebook</a></li>
                                        <li><a href="#">Twitter</a></li>
                                        <li><a href="#">Google+</a></li>
                                        <li><a href="#">Behance</a></li>
                                        <li><a href="#">Dribbble</a></li>
                                    </ul> 
                                </div>
                            </div>
                        </div>

                        <div class="big-column col-md-7 col-sm-12 col-xs-12">
                            <div class="row clearfix">
                                <!--Footer Column-->
                                <div class="footer-column col-md-6 col-sm-6 col-xs-12">
                                    <h3>Contact </h3>
                                    <ul class="footer-links contact-links">
                                        <li>121 King Street, Melbourne, <br> Australia</li>
                                        <li><a href="#">+123 456 789 000</a></li>
                                        <li><a href="#">info@varna.com+</a></li>
                                    </ul> 
                                </div>

                                <!--Footer Column-->
                                <div class="footer-column col-md-6 col-sm-6 col-xs-12">
                                    <h3>About</h3>
                                    <div class="text">
                                        <p>Capitalize on low hanging fruit to identify value added activityto beta test. Override the digital divide with additional clickthroughs from</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!--Bottom-->
        <div class="footer-bottom">
            <div class="auto-container">
                <div class="copyright">Copyright <a href="index.html">Varna Charity</a> © 2018. All Rights Reserved.</div>
            </div>
        </div>
    </footer>
    <!-- End Footer -->

</div>  
<!--End pagewrapper-->

<!--Scroll to top-->
<div class="scroll-to-top scroll-to-target" data-target="html"><span class="fa fa-angle-double-up"></span></div>

<script src="js/jquery.js"></script> 
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.js"></script> 
<script src="js/jquery.fancybox.js"></script>
<script src="js/owl.js"></script>
<script src="js/wow.js"></script>
<script src="js/appear.js"></script>
<script src="js/script.js"></script>
</body>

</html>