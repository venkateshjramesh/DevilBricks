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
    <script type="text/javascript" src="<spring:url value="/resources/javascripts/jquery.cookie.js"/>"></script>
    <script type="text/javascript" src="<spring:url value="/resources/javascripts/jquery.raty.js"/>"></script>
    <script type="text/javascript" src="<spring:url value="/resources/javascripts/jquery.cookie.js"/>"></script>
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
                            <i class="icon-user"></i> <span id="userNameVal">Anonymous</span>
                            <i class="icon-caret-down"></i>
                        </a>

                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="#">Settings</a></li>
                            <li class="divider"></li>
                            <li id="logout"><a tabindex="-1" href="#">Logout</a></li>
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
                        <li ><a href="${pageContext.request.contextPath}/searchReview">Search Reviews</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/writeReview">Write Reviews</a></li>
                        <li ><a href="faq">Faq</a></li>

                    </ul>
                <div class="nav-header" data-toggle="collapse" data-target="#accounts-menu"><i class="icon-briefcase"></i>Account<span class="label label-info">+10</span></div>
                <ul id="accounts-menu" class="nav nav-list collapse in">
                  <li><a href="#loginModal" data-toggle="modal">Sign In</a></li>
                  <li><a href="${pageContext.request.contextPath}/signUp" target="_blank">Sign Up</a></li>
                  <li ><a id="forgotPassAnchor" href="#forgotPasswordModal" data-toggle="modal">Forgot Password</a></li>
                </ul>

                <div class="nav-header" data-toggle="collapse" data-target="#legal-menu"><i class="icon-legal"></i>Legal</div>
                <ul id="legal-menu" class="nav nav-list collapse in">
                  <li ><a href="${pageContext.request.contextPath}/privacyPolicy">Privacy Policy</a></li>
                  <li ><a href="${pageContext.request.contextPath}/termsAndConditions">Terms and Conditions</a></li>
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
        <h6>IMPORTANT: Please fill maximum accurate details in the below boxes, So that it makes search easier for other users</h3>
		<h6><i class="icon-asterisk" style="color:red"></i>&nbsp;&nbsp;&nbsp;The fields marked with this symbol are mandatory</h6>
		<!-- check for id exist or not for writing review -->
		<h3>Land Lord Identification Details </h3>
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
                  <label>PinCode</label>
                  <input name="pinCode" id="pinCode" value="${pinCode}" disabled="disabled" type="text" class="input-xlarge">
                  <label>Taluk</label>
                  <input name="taluk" id="taluk" value="${taluk}" disabled="disabled" type="text" class="input-xlarge">
                  <label>District</label>
                  <input name="district" id="district" value="${district}" disabled="disabled" type="text" class="input-xlarge">
                <label>State</label>
                  <input name="state" id="state" value="${state}" disabled="disabled" type="text" class="input-xlarge">
            </c:when>
            <c:otherwise>
                  <input name="id" type="hidden">
                          <label>First Name &nbsp;<i class="icon-asterisk" style="color:red"></i></label>
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
                          		<label>Plot Number &nbsp;<i class="icon-asterisk" style="color:red"></i></label>
                                  <input name="plotNumber" id="plotNumber" type="text" class="input-xlarge">
                                  <span style="display:none" id="plotNumberMsg"><font color="Blue" size="2"><b>Only Numbers and alphabets allowed. In-case of multiple plot numbers enter only the</b></font></span>
                                  <span id="plotNumberMsg1" style="display: none;margin-left:35%"><font size="2" color="Blue"><b>first plot number</b></font></span>
                                  <label>Appartment Name or Building Name</label>
                                  <input name="appartmentName" id="appartmentName" type="text" class="input-xlarge">
                                  <span style="display:none" id="appartmentNameMsg"><font color="Blue" size="2"><b>Only alphabets,Numbers and space allowed</b></font></span>
                                  <label>Door Number</label>
                                  <input name="doorNo" id="doorNo" type="text" class="input-xlarge">
                                  <span style="display:none" id="doorNoMsg"><font color="Blue" size="2"><b>Only alphabets and Numbers allowed. In-case of multiple door numbers enter only the</b></font></span>
                                  <span id="doorNoMsg1" style="display: none;margin-left:35%"><font size="2" color="Blue"><b>first door number</b></font></span>
                          		<label>Floor</label>
                                  <input name="floor" id="floor" type="text" class="input-xlarge">
                                  <span style="display:none" id="floorMsg"><font color="Blue" size="2"><b>Only alphabets and Numbers allowed. Preferably use only Numbers</b></font></span>
                                  <label>Street Name</label>
                                  <input name="streetName" id="streetName" type="text" class="input-xlarge">
                                  <span style="display:none" id="streetNameMsg"><font color="Blue" size="2"><b>Only alphabets and space allowed</b></font></span>
                                  <label>Near By LandMark</label>
                                  <input name="landmark" id="landmark" type="text" class="input-xlarge">
                                  <span style="display:none" id="landmarkMsg"><font color="Blue" size="2"><b>Only alphabets,Numbers and space allowed</b></font></span>
                          		<label>Area</label>
                                  <input name="area" id="area" type="text" class="input-xlarge">
                                  <span style="display:none" id="areaMsg"><font color="Blue" size="2"><b>Only alphabets and space allowed</b></font></span>
                          		<label>City</label>
                                  <input name="city" id="city" type="text" class="input-xlarge">
                                  <span style="display:none" id="cityMsg"><font color="Blue" size="2"><b>Only alphabets and space allowed</b></font></span>
                                  <label>PinCode</label>
                                  <input name="pinCode" id="pinCode" type="text" class="input-xlarge" maxlength=6>
                                  <span style="display:none" id="pinCodeMsg"><font color="Blue" size="2"><b>Only 6 digit numbers allowed</b></font></span>
                                  <label>Taluk</label>
                                  <input name="taluk" id="taluk" type="text" class="input-xlarge">
                                  <span style="display:none" id="talukMsg"><font color="Blue" size="2"><b>Only alphabets and space allowed</b></font></span>
                                  <label>District</label>
                                  <input name="district" id="district" type="text" class="input-xlarge">
                                  <span style="display:none" id="districtMsg"><font color="Blue" size="2"><b>Only alphabets and space allowed</b></font></span>
                          		<label>State</label>
                                  <input name="state" id="state" type="text" class="input-xlarge">
                                  <span style="display:none" id="stateMsg"><font color="Blue" size="2"><b>Only alphabets and space allowed</b></font></span>
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

<!-- Modal -->
        	<div id="forgotPasswordModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        	  <div class="modal-header">
        	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        	    <h3 id="myModalLabel">Forgot Password</h3>
        	  </div>
        	  <div class="modal-body">
        	  <div id="hideEmailPassword">
        	  <h6>Please enter your registered E-Mail Id</h6>
        	     <label>E-mail Id</label>
                <input id="passwordEmail" type="text" class='input-xlarge'>
                <h6 style="display:inline"><font color="Red"><span id="emailPaswordMsg"></span></font></h6>

            </div>
            <div id="showEmailStatus" style="display:none">
            <h5><font color="Red">E-Mail sent successfully. Please check your E-Mail Id for password.</font></h5>
            </div>
            </div>
        	  <div class="modal-footer">
                <button id="submitPasswordReset" class="btn btn-primary" id="submitLogin">Submit</button>
        	    <button id="passwordModelClose" class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Close</button>
        	  </div>
        	</div>
        	<!-- end of modal -->


<!-- Modal -->
	<div id="loginModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="myModalLabel">Sign In</h3>
	  </div>
	  <div class="modal-body">
	     <label>Username</label>
        <input id="userName" type="text" class='input-xlarge'>
        <label>Password</label>
        <input id="password" type="password" class='input-xlarge'>
        <label class="remember-me"><input type="checkbox"> Remember me</label>
        <p><a href="signUp" target="_blank">Sign Up</a></p

    </div>
	  <div class="modal-footer">
        <button class="btn btn-primary" id="submitLogin">Submit</button>
	    <button id="loginModelClose" class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Close</button>
	  </div>
	</div>
	<!-- end of modal -->











  </body>
</html>

