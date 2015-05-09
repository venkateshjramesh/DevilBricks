<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootstrap Admin</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href="<spring:url value="/resources/lib/bootstrap/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="screen">
    <link href="<spring:url value="/resources/lib/bootstrap/css/bootstrap-responsive.css"/>" rel="stylesheet" type="text/css" media="screen">
    <link href="<spring:url value="/resources/stylesheets/theme.css"/>" rel="stylesheet" type="text/css" media="screen">
    <link href="<spring:url value="/resources/lib/font-awesome/css/font-awesome.css"/>" rel="stylesheet" type="text/css" media="screen">

    <script type="text/javascript" src="<spring:url value="/resources/lib/jquery-1.8.1.min.js"/>"></script>
    <script type="text/javascript" src="<spring:url value="/resources/javascripts/DevilBrick.js"/>"></script>
    <!-- Demo page code -->

    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7"> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8"> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9"> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!-->
  <body>
  <!--<![endif]-->

    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <ul class="nav pull-right">

                    <li id="fat-menu" class="dropdown">
                        <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-user"></i> Jack Smith
                            <i class="icon-caret-down"></i>
                        </a>

                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="#">Settings</a></li>
                            <li class="divider"></li>
                            <li><a tabindex="-1" href="sign-in.html">Logout</a></li>
                        </ul>
                    </li>

                </ul>
                <a class="brand" href="index.html"><span class="first">Your</span> <span class="second">Company</span></a>
            </div>
        </div>
    </div>


    <div class="container-fluid">

        <div class="row-fluid">
            <div class="span3">
                <div class="sidebar-nav">
                  <div class="nav-header" data-toggle="collapse" data-target="#dashboard-menu"><i class="icon-dashboard"></i>Dashboard</div>
                    <ul id="dashboard-menu" class="nav nav-list collapse in">
						<li ><a href="${pageContext.request.contextPath}/aboutUs">About Us</a></li>
                        <li><a href="viewReview">View Reviews</a></li>
                        <li ><a href="${pageContext.request.contextPath}/searchReview">Search Reviews</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/writeReview">Write Reviews</a></li>
                        <li ><a href="faq.html">Faq</a></li>

                    </ul>
                <div class="nav-header" data-toggle="collapse" data-target="#accounts-menu"><i class="icon-briefcase"></i>Account<span class="label label-info">+10</span></div>
                <ul id="accounts-menu" class="nav nav-list collapse in">
                  <li ><a href="sign-in.html">Sign In</a></li>
                  <li ><a href="signUp">Sign Up</a></li>
                  <li ><a href="reset-password.html">Reset Password</a></li>
                </ul>

                <!-- <div class="nav-header" data-toggle="collapse" data-target="#settings-menu"><i class="icon-exclamation-sign"></i>Error Pages</div>
                <ul id="settings-menu" class="nav nav-list collapse in">
                  <li ><a href="403.html">403 page</a></li>
                  <li ><a href="404.html">404 page</a></li>
                  <li ><a href="500.html">500 page</a></li>
                  <li ><a href="503.html">503 page</a></li>
                </ul> -->

                <div class="nav-header" data-toggle="collapse" data-target="#legal-menu"><i class="icon-legal"></i>Legal</div>
                <ul id="legal-menu" class="nav nav-list collapse in">
                  <li ><a href="privacy-policy.html">Privacy Policy</a></li>
                  <li ><a href="terms-and-conditions.html">Terms and Conditions</a></li>
                </ul>
            </div>
        </div>
        <div class="span9">
            <h1 class="page-title">Write Reviews</h1>
<div class="btn-toolbar">

  <div class="btn-group">
  </div>
</div>
<div class="well">
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
    <form id="tab" method="post" action="${pageContext.request.contextPath}/saveReview">
        <h5><font color="red">${statusMessage}</font></h5>
		<h3>Land Lord Identification Details </h3>

		<!-- check for id exist or not for writing review -->
		<c:choose>
            <c:when test="${!empty id && !empty firstName}">

                  <input name="id" type="hidden" value="${id}">
                  <label>First Name</label>
                  <input name="firstName" id="firstName" type="text" value="${firstName}" disabled="disabled" class="input-xlarge">
                  <label>Last Name</label>
                  <input name="lastName" id="lastName" type="text" value="${lastName}" disabled="disabled" class="input-xlarge">
                  <label>Email</label>
                  <input name="email" id="email" type="text" value="${email}" disabled="disabled" class="input-xlarge">
                  <label>Mobile</label>
                  <input name="mobile" id="mobile" type="text" value="${mobile}" disabled="disabled" class="input-xlarge" maxlength=10>

                  <h3>Address</h3>
                <label>Plot Number</label>
                  <input name="plotNumber" id="plotNumber" value="${plotNumber}" disabled="disabled" type="text" class="input-xlarge">
                  <label>Appartment Name or Building Name</label>
                  <input name="appartmentName" id="appartmentName" value="${appartmentName}" disabled="disabled" type="text" class="input-xlarge">
                  <label>Door Number</label>
                  <input name="doorNo" id="doorNo" value="${doorNo}" disabled="disabled" type="text" class="input-xlarge">
                <label>Floor</label>
                  <input name="floor" id="floor" value="${floor}" disabled="disabled" type="text" class="input-xlarge">
                  <label>Street Name</label>
                  <input name="streetName" id="streetName" value="${streetName}" disabled="disabled" type="text" class="input-xlarge">
                  <label>Near By LandMark</label>
                  <input name="landmark" id="landmark" value="${landmark}" disabled="disabled" type="text" class="input-xlarge">
                <label>Area</label>
                  <input name="area" id="area" value="${area}" disabled="disabled" type="text" class="input-xlarge">
                <label>City</label>
                  <input name="city" id="city" value="${city}" disabled="disabled" type="text" class="input-xlarge">
                  <label>Taluk</label>
                  <input name="taluk" id="taluk" value="${taluk}" disabled="disabled" type="text" class="input-xlarge">
                  <label>District</label>
                  <input name="district" id="district" value="${district}" disabled="disabled" type="text" class="input-xlarge">
                <label>State</label>
                  <input name="state" id="state" value="${state}" disabled="disabled" type="text" class="input-xlarge">
                  <label>PinCode</label>
                  <input name="pinCode" id="pinCode" value="${pinCode}" disabled="disabled" type="text" class="input-xlarge">
            </c:when>
            <c:otherwise>
                  <input name="id" type="hidden">
                          <label>First Name</label>
                          <input name="firstName" id="firstName" type="text" class="input-xlarge">
                          <span style="display:none" id="firstNameMsg"><font color="Blue" size="2"><b>Only alphabets and space allowed</b></font></span>
                          <label>Last Name</label>
                          <input name="lastName" id="lastName" type="text" class="input-xlarge">
                          <span style="display:none" id="lastNameMsg"><font color="Blue" size="2"><b>Only alphabets and space allowed</b></font></span>
                          <label>Email</label>
                          <input name="email" id="email" type="text" class="input-xlarge">
                          <span style="display:none" id="emailMsg"><font color="Red" size="2"><b>E mail should adhere to proper email format</b></font></span>
                  		<label>Mobile</label>
                          <input name="mobile" id="mobile" type="text" class="input-xlarge" maxlength=10>
                          <span style="display:none" id="mobileMsg"><font color="Blue" size="2"><b>Only 10 digit Indian mobile numbers allowed</b></font></span>

                          <h3>Address</h3>
                          		<label>Plot Number</label>
                                  <input name="plotNumber" id="plotNumber" type="text" class="input-xlarge">
                                  <label>Appartment Name or Building Name</label>
                                  <input name="appartmentName" id="appartmentName" type="text" class="input-xlarge">
                                  <label>Door Number</label>
                                  <input name="doorNo" id="doorNo" type="text" class="input-xlarge">
                          		<label>Floor</label>
                                  <input name="floor" id="floor" type="text" class="input-xlarge">
                                  <label>Street Name</label>
                                  <input name="streetName" id="streetName" type="text" class="input-xlarge">
                                  <label>Near By LandMark</label>
                                  <input name="landmark" id="landmark" type="text" class="input-xlarge">
                          		<label>Area</label>
                                  <input name="area" id="area" type="text" class="input-xlarge">
                          		<label>City</label>
                                  <input name="city" id="city" type="text" class="input-xlarge">
                                  <label>Taluk</label>
                                  <input name="taluk" id="taluk" type="text" class="input-xlarge">
                                  <label>District</label>
                                  <input name="district" id="district" type="text" class="input-xlarge">
                          		<label>State</label>
                                  <input name="state" id="state" type="text" class="input-xlarge">
                                  <label>PinCode</label>
                                  <input name="pinCode" id="pinCode" type="text" class="input-xlarge">
            </c:otherwise>
        </c:choose>

       <!--  <input name="id" type="hidden">
        <label>First Name</label>
        <input name="firstName" id="firstName" type="text" class="input-xlarge">
        <span style="display:none" id="firstNameMsg"><font color="Blue" size="2"><b>Only alphabets and space allowed</b></font></span>
        <label>Last Name</label>
        <input name="lastName" id="lastName" type="text" class="input-xlarge">
        <span style="display:none" id="lastNameMsg"><font color="Blue" size="2"><b>Only alphabets and space allowed</b></font></span>
        <label>Email</label>
        <input name="email" id="email" type="text" class="input-xlarge">
        <span style="display:none" id="emailMsg"><font color="Red" size="2"><b>E mail should adhere to proper email format</b></font></span>
		<label>Mobile</label>
        <input name="mobile" id="mobile" type="text" class="input-xlarge" maxlength=10>
        <span style="display:none" id="mobileMsg"><font color="Blue" size="2"><b>Only 10 digit Indian mobile numbers allowed</b></font></span>
          -->
		<!-- <h3>Address</h3>
		<label>Plot Number</label>
        <input name="plotNumber" id="plotNumber" type="text" class="input-xlarge">
        <label>Appartment Name or Building Name</label>
        <input name="appartmentName" id="appartmentName" type="text" class="input-xlarge">
        <label>Door Number</label>
        <input name="doorNo" id="doorNo" type="text" class="input-xlarge">
		<label>Floor</label>
        <input name="floor" id="floor" type="text" class="input-xlarge">
        <label>Street Name</label>
        <input name="streetName" id="streetName" type="text" class="input-xlarge">
        <label>Near By LandMark</label>
        <input name="landmark" id="landmark" type="text" class="input-xlarge">
		<label>Area</label>
        <input name="area" id="area" type="text" class="input-xlarge">
		<label>City</label>
        <input name="city" id="city" type="text" class="input-xlarge">
        <label>Taluk</label>
        <input name="taluk" id="taluk" type="text" class="input-xlarge">
        <label>District</label>
        <input name="district" id="district" type="text" class="input-xlarge">
		<label>State</label>
        <input name="state" id="state" type="text" class="input-xlarge">
        <label>PinCode</label>
        <input name="pinCode" id="pinCode" type="text" class="input-xlarge">  -->

		<h3>Tenant comments</h3>
        <label>Land Lords Behaviour</label>
        <textarea name="behaviour" value="Smith" rows="5" class="input-xlarge">
        </textarea>
		<label>Land Lords Attitude</label>
        <textarea name="attitude" value="Smith" rows="5" class="input-xlarge">
        </textarea>
		<label>Electricity Bill</label>
        <textarea name="ebBill" value="Smith" rows="5" class="input-xlarge">
        </textarea>
		<label>Maintainance Cost</label>
        <textarea name="maintainance" value="Smith" rows="5" class="input-xlarge">
        </textarea>
		<label>Wrt Guest and Visitors</label>
        <textarea name="guest" value="Smith" rows="5" class="input-xlarge">
        </textarea>
		<label>Hidden Costs</label>
        <textarea name="hiddenCost" value="Smith" rows="5" class="input-xlarge">
        </textarea>
		<label>Water Facility</label>
        <textarea name="water" value="Smith" rows="5" class="input-xlarge">
        </textarea>
		<label>Parking Facility</label>
        <textarea name="parking" value="Smith" rows="5" class="input-xlarge">
        </textarea>
		<label>Other Facilities</label>
        <textarea name="facilities" value="Smith" rows="5" class="input-xlarge">
        </textarea>
		<label>Other Comments</label>
        <textarea name="otherComments" value="Smith" rows="5" class="input-xlarge">
        </textarea>
		<label>Suggestion for Other Tenants</label>
        <textarea name="suggestion" value="Smith" rows="5" class="input-xlarge">
        </textarea>


	<div>
	<button id="createOwnerButton" onclick="validateOwner()" class="btn btn-primary"><i class="icon-save"></i> Submit</button>
	</div>
    </form>
      </div>
  </div>




</div>

        </div>
    </div>



    <footer>
        <hr>
        <!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
        <p class="pull-right">A <a href="http://www.portnine.com/bootstrap-themes" target="_blank">Free Bootstrap Theme</a> by <a href="http://www.portnine.com" target="_blank">Portnine</a></p>


        <p>&copy; 2012 <a href="http://www.portnine.com">Portnine</a></p>
    </footer>




    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	<script src="resources/lib/bootstrap/js/application.js"></script>
	<script type="text/javascript" src="<spring:url value="/resources/lib/bootstrap/js/bootstrap.js"/>"></script>













  </body>
</html>

