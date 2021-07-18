
<!DOCTYPE html>
<html lang="en">
  <%@page import="java.sql.*" %>
<head>
<meta charset="utf-8">
<title>feedhappiness- Charity HTML Template | Causes</title>

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
<!-- Validate Form -->
<script>
function validateForm() {
  var x = document.forms["contact-form"]["name"].value;
  var y = document.forms["contact-form"]["address"].value;
  var z = document.forms["contact-form"]["city"].value;
  var a = document.forms["contact-form"]["contact"].value;
  var b = document.forms["contact-form"]["email"].value;

  var a=c.length;
 
 
  if (x == "" || y=="" || z=="" || a=="" || b=="") {
  alert("All field must be filled out");
  return false;
}
	else
		{
		 if(a!=10)
		 	 
		  {
		alert("Contact Must be 10 Digit");
		return false;
		  }
		}
	  
  
  
}

function validateEmail(emailField){
    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

    if (reg.test(emailField.value) == false) 
    {
        alert('Invalid Email Address');
        return false;
    }

    return true;

}

function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}
function isCharKey(e,t){
        if (window.event) {
        	 var  charCode = window.event.keyCode;
        }
        else if (e) {
            var charCode = e.which;
        }
        else { return true; }
        if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || charCode <= 32)
            return true;
        else
            return false;
  
   
}
</script>


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
                                    <li class="current"><a href="index.jsp">Home</a>
                                     
                                    </li>
                                    <li><a href="index.jsp#about_us">About us</a></li>
                                   
                                    <li><a href="contact.html">Contact Us</a></li>
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
                                  
                                    <li><a href="contact.html">Contact Us</a></li>
                                </ul>
                            </div>
                        </nav><!-- Main Menu End-->
                    </div>
                </div>
            </div>
        </header>
<div class="page-wrapper">
    <!-- Preloader -->
    <div class="preloader"></div>
    


     <!--Page Title-->
    <section class="page-title" style="background-image:url(images/background/9.jpg);">
        <div class="auto-container">
            <h1>Donor Registration</h1>
            <ul class="bread-crumb clearfix">
                <li><a href="index.html">Home </a></li>
                <li>Donor Registration</li>
            </ul>
        </div>
    </section>
    <!--End Page Title-->

    <!-- Who We Are -->
    <section class="who-we-are">
        <div class="outer-container clearfix">
            <!--Content Column-->
            <div class="content-column">
                    <div class="inner-box">
                            <div class="sec-title">
                                    <h2><span>Donor</span> Registration<br> </h2>
                                    <span class="separator-two"></span>
                                </div>
                            <div class="contact-form">
                                   
                                  
                                    <form method="post" action="/NGO_Management/DonarRegistrationServlet" onsubmit="return validateForm();" id="contact-form">
                                        <div class="row clearfix">
                                            <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                                                <input type="text" name="name" onkeypress="return isCharKey(event,this)" placeholder="Name" required>
                                            </div>
                                            
                                            <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                                                <input type="email" name="email" placeholder="Mail" onblur="validateEmail(this);"  required>
                                            </div>
                                             <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                                                    <input type="password" name="password"  placeholder="Password" required>
                                            </div>
                                            <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                                                    <input type="text" name="contact" onkeypress="return isNumberKey(event)" placeholder="Contact No" required>
                                            </div>
                                            <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                                <select class="select2" id="state">
                                                    <option disabled selected>State</option>
                                                 
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
                                                <select class="select2" id="city" name="city">
                                                    <option disabled selected>City</option>
                                                  
                                                </select>
                                            </div>
                                            
                                            
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                <textarea name="address" placeholder="Address" required></textarea>
                                            </div>
                                            
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group text-center">
                                                <button class="theme-btn btn-style-one" type="submit" name="submit-form">Register Now</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                    </div>
            </div>
            <!--Image Column-->
            <div class="image-column" style="background-image:url(images/resource/image-2.jpg);">
                <figure class="image-box"><img src="images/resource/image-2.jpg" alt=""></figure>
            </div>
        </div>
    </section>
    <!-- End Who We Are -->

    <!-- Testimonial And Donation -->
  
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
<script src="js/validate.js"></script>
<script src="js/jquery-ui.js"></script> 
<script src="js/jquery.fancybox.js"></script>
<script src="js/owl.js"></script>
<script src="js/wow.js"></script>
<script src="js/appear.js"></script>
<script src="js/script.js"></script>
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