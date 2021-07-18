
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<html lang="en">

<head>
<meta charset="utf-8">
<title>feedhappiness - Charity HTML Template | Causes</title>

<!-- Stylesheets -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
   <link rel="stylesheet" href="css/select2.min.css">
<link rel="stylesheet" href="css/select2-bootstrap.min.css">
<style>
    .select2 {
        width: 100% !important;
        height:30px;
    }
    .select2-container--bootstrap .select2-selection--single {
        height: 50px;

        }
        .select2-container--bootstrap .select2-selection {
        background-color: #efefef;
        }
    
</style>
<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
<link rel="icon" href="images/favicon.png" type="image/x-icon">
<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
</head>

<body>

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
                                    <li class="current dropdown"><a href="index.jsp">Home</a>
                                     
                                    </li>
                                    <li><a href="index.jsp#about_us">About us</a></li>
                                    <li><a href="make_donation.jsp">Donations</a></li>
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
                                    <li class="current dropdown"><a href="index.jsp">Home</a>
                                    </li>
                                    <li><a href="index.jsp#about_us">About us</a></li>
                                    <li><a href="make_donation.jsp">Donations</a></li>
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
    <section class="page-title" style="background-image:url(images/background/2.jpg);">
        <div class="auto-container">
            <h1>Donate</h1>
            <ul class="bread-crumb clearfix">
                <li><a href="index.html">Home </a></li>
                <li>Donate</li>
            </ul>
        </div>
    </section>
    <!--End Page Title-->

    <!-- Testimonial And Donation -->
    <section class="testimonial-and-donation">
        <div class="auto-container">
            <div class="row clearfix">
                <div class="testimonial-column col-md-6 col-sm-12 col-xs-12">
                    <div class="inner-column">
                        <div class="sec-title">
                            <h2>Our <span>Voulnteers</span> say</h2>
                        </div>

                        <div class="testimonial-two owl-carousel owl-theme">
                            <!-- Testimonial Block Two -->
                            <div class="testimonial-block-two">
                                <div class="inner-box">
                                    <div class="thumb"><img src="images/resource/thumb-1.jpg" alt=""></div>
                                    <div class="text">
                                        <span class="icon flaticon-left-quotes-sign"></span>
                                        <p>Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs Leverage agile frameworks to aches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.</p>
                                    </div>
                                    <div class="info">
                                        <span class="name">Amanda Stephens,</span>
                                        <span class="designation">Marketting manager</span>
                                    </div> 
                                </div>
                            </div>

                            <!-- Testimonial Block Two -->
                            <div class="testimonial-block-two">
                                <div class="inner-box">
                                    <div class="thumb"><img src="images/resource/thumb-1.jpg" alt=""></div>
                                    <div class="text">
                                        <span class="icon flaticon-left-quotes-sign"></span>
                                        <p>Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs Leverage agile frameworks to aches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.</p>
                                    </div>
                                    <div class="info">
                                        <span class="name">Amanda Stephens,</span>
                                        <span class="designation">Marketting manager</span>
                                    </div> 
                                </div>
                            </div>

                            <!-- Testimonial Block Two -->
                            <div class="testimonial-block-two">
                                <div class="inner-box">
                                    <div class="thumb"><img src="images/resource/thumb-1.jpg" alt=""></div>
                                    <div class="text">
                                        <span class="icon flaticon-left-quotes-sign"></span>
                                        <p>Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs Leverage agile frameworks to aches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.</p>
                                    </div>
                                    <div class="info">
                                        <span class="name">Amanda Stephens,</span>
                                        <span class="designation">Marketting manager</span>
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-column col-md-6 col-sm-12 col-xs-12">
                    <div class="inner-column">
                        <div class="sec-title">
                            <h2>Make a <span>donation</span> now!</h2>
                        </div> 
                        <div class="donation-form style-two">
                            <form  method="post" action="/NGO_Management/MakeDonationServlet" >
                                <div class="row clearfix">
                                    <div class="form-group col-md-12 col-sm-6 col-xs-12">
                                        <h4>Donation Type </h4>
                                        <input type="checkbox" name="cloth1" id="cloth1">
                                        <label for="cloth">Cloth</label>
                                        <input type="checkbox" name="grain_food1" id="grain_food1">
                                        <label for="food">Grain Food</label>
                                          <input type="checkbox" name="cooked_food1" id="cooked_food1">
                                        <label for="food">Cooked Food</label>
                                        <input type="checkbox" name="other1" id="other1">
                                        <label for="other">Other</label>
                                    </div>
                                      <div class="form-group col-md-6 col-sm-12 col-xs-12">
                                        <h4>I Want to Donate from</h4>
                                        <select class="select2" id="state">
                                            <option disable>States</option>
                                            
<%
Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngo", "root", "");
//out.println("<p>connection successful !!!</p>");
 String sql = "Select * from states order by id asc";
PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
ResultSet rs = pstm.executeQuery();
while (rs.next()) {
              out.print("<option value='"+rs.getString("id")+"'>"+rs.getString("state_name")+"</option>");
}
pstm.close();
con.close();

%>
     
                                        </select>
                                    </div>

                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <h4>City</h4>
                                        <select class="select2" id="city" name="city">
                                            <option >City</option>
                                            
                                        </select>
                                    </div>

                                    <div class="form-group col-md-12 col-sm-6 col-xs-12">
                                        <h4>Select NGO</h4>
                                        <select class="select2" value="" id="ngo" name="ngo_id">
                                         <option disabled selected>NGO</option>
                                           
                                        </select>
                                    </div>
                                    <div class="form-group col-md-12 col-sm-6 col-xs-12 contact-form">
                                            <h4>Description</h4>
                                            <textarea cols="45" rows="5" style="background-color: #efefef; color: #888888;" name="description" placeholder="description"></textarea>
                                    </div>
                                    
                                    
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <h4>Expiry Date</h4>
                                       <input type="date" name="date" >
                                    </div>
                                     <input type="hidden" name="cloth" id="cloth" value="">
                                            <input type="hidden" name="grain_food" id="grain_food" value="">
                                            <input type="hidden" name="cooked_food" id="cooked_food" value="">
                                            <input type="hidden" name="other" id="other" value="">
                                    <input type="hidden" name="cust_id" value="<%= session.getAttribute("id")%>">
                                    <div class="form-group col-md-12 col-sm-12 col-xs-12 btn-box">
                                        <button type="submit" onclick="return check();" class="theme-btn btn-style-one">Donate Now</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Testimonial And Donation -->

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

<script src="js/select2.full.min.js"></script>

<script>


    $(function () {
        //Initialize Select2 Elements
        $('.select2').select2({
            theme: "bootstrap",
            placeholder: "Select",
            allowClear: true,
            color: '#888888',
            
        })
    });
</script>
 <script type="text/javascript">
 
 $(document).ready(function()
		 {
	// alert('in document');
	 $('#state').change(function(){
		// alert('in document');
         var state = $('#state').val();
         $.ajax({
             url: '/NGO_Management/CityListServlet',
             type: 'GET',
             dataType:"json",
             data: {
                 state: state 
             },
             success: function (response) {
            	 //alert(response);
                 var model = $('#city');
                 model.empty();
                 model.append("<option value=''>Select</option>");
                 $.each(response, function(index, element) {
                 model.append("<option value='"+ element.id +"'>" + element.city_name + "</option>");
             });
         }
         });
     });
	 
	 $('#city').change(function(){
         var city = $('#city').val();
         if($('#cloth').is(":checked")){
             var cloth = 1;
         }else{
             var cloth = 0;
         }
         if($('#grain_food').is(":checked")){
             var grain_food = 1;
         }else{
             var grain_food = 0;
         }
         if($('#cooked_food').is(":checked")){
             var cooked_food = 1;
         }else{
             var cooked_food = 0;
         }
         if($('#other').is(":checked")){
             var other = 1;
         }else{
             var other = 0;
         }

         $.ajax({
             url: '/NGO_Management/NgoListServlet',
             type: 'GET',
             dataType:"json",
             data: {
                 city: city, 
                 cloth: cloth,
                 grain_food: grain_food,
                 cooked_food: cooked_food,
                 other: other
             },
             success: function (response) {
                 var model = $('#ngo');
                 model.empty();
                 model.append("<option value=''>Select</option>");
                 $.each(response, function(index, element) {
                 model.append("<option value='"+ element.id +"'>" + element.ngo_name + "</option>");
             });
         }
         });
     });
		 });
                                           
  </script>
<script>
function check()
{ 
	if($('#cloth1').is(":checked")==true)
		{
		$('#cloth').val(1);
		}
	else
		{
		$('#cloth').val(0);
		}
	

	if($('#grain_food1').is(":checked"))
		{
		$('#grain_food').val(1);
		}
	else
		{
		$('#grain_food').val(0);
		}
	

	if ($('#cooked_food1').is(":checked"))
		{
		$('#cooked_food').val(1);
		}
	else
		{
		$('#cooked_food').val(0);
		}
	

	if ($('#other1').is(":checked"))
		{
		$('#other').val(1);
		}
	else
		{
		$('#other').val(0);
		}
	//alert($('#cloth').val());
	return true;
	}

</script>


</body>

</html>