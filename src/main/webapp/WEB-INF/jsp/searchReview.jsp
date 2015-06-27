<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootstrap Admin</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="venkatesh" >

    <link rel="stylesheet" type="text/css" href="resources/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="resources/lib/bootstrap/css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="resources/stylesheets/theme.css">
    <link rel="stylesheet" href="resources/lib/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="resources/css/devilBrick.css">


    <script src="resources/lib/jquery-1.8.1.min.js" type="text/javascript"></script>
    <script src="resources/javascripts/jquery.dataTables.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="resources/javascripts/jquery.cookie.js"></script>
    <script type="text/javascript" src="resources/javascripts/jquery.raty.js"></script>
    <script src="resources/javascripts/DevilBrick.js" type="text/javascript"></script>


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
						<li ><a href="aboutUs">About Us</a></li>
                        <li class="active"><a href="searchReview">Search Reviews</a></li>
                        <li ><a href="writeReview">Write Reviews</a></li>
                        <li ><a href="faq">Faq</a></li>

                    </ul>
                <div class="nav-header" data-toggle="collapse" data-target="#accounts-menu"><i class="icon-briefcase"></i>Account<span class="label label-info">+10</span></div>
                <ul id="accounts-menu" class="nav nav-list collapse in">
                  <li ><a href="#loginModal" data-toggle="modal">Sign In</a></li>
                  <li ><a href="signUp" target="_blank">Sign Up</a></li>
                  <li ><a href="resetPassword" target="_blank">Reset Password</a></li>
                </ul>

                <div class="nav-header" data-toggle="collapse" data-target="#legal-menu"><i class="icon-legal"></i>Legal</div>
                <ul id="legal-menu" class="nav nav-list collapse in">
                  <li ><a href="privacyPolicy">Privacy Policy</a></li>
                  <li ><a href="termsAndConditions">Terms and Conditions</a></li>
                </ul>
            </div>
        </div>
        <div class="span9">
            <h1 class="page-title">Search Reviews</h1>
<div class="btn-toolbar">
    <!-- <button class="btn btn-primary"><i class="icon-save"></i> Submit</button> -->
    <!-- <a href="#myModal" data-toggle="modal" class="btn">Delete</a>-->
  <div class="btn-group">
  </div>
</div>
<div class="well">

    <div id="myTabContent" class="tab-content">


   <!--  <form id="tab2" method="get" action="${pageContext.request.contextPath}/searchOwner"> -->
   <h6><i class="icon-asterisk" style="color:red"></i>&nbsp;&nbsp;&nbsp;The fields marked with this symbol are mandatory</h6>
        <h3>Contact Details </h3>
        <input name="id" type="hidden">
        <label>First Name &nbsp;<i class="icon-asterisk" style="color:red"></i></label>
        <input id="firstName" name="firstName" type="text" class="input-xlarge">
                  <span style="display:none" id="firstNameMsg"><font color="Blue" size="2"><b>Only alphabets and space allowed</b></font></span>
        <label>Last Name</label>
        <input id="lastName" name="lastName" type="text" class="input-xlarge">
                  <span style="display:none" id="lastNameMsg"><font color="Blue" size="2"><b>Only alphabets and space allowed</b></font></span>
        <label>Email</label>
        <input id="email" name="email" type="text" class="input-xlarge">
                  <span style="display:none" id="emailMsg"><font color="Red" size="2"><b>E mail should adhere to proper email format</b></font></span>
        <label>Mobile</label>
        <input id="mobile" name="mobile" type="text" class="input-xlarge">
                  <span style="display:none" id="mobileMsg"><font color="Blue" size="2"><b>Only 10 digit Indian mobile numbers allowed</b></font></span>


		<h3>Address</h3>
		<label>Plot Number</label>
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
                <label>PinCode &nbsp;<i class="icon-asterisk" style="color:red"></i></label>
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

        <div>
            <button id="submitForm" class="btn btn-primary">Search</button>
        </div>
   <!--  </form> -->

	<!-- start of the data table -->
	<div id="fullTable" style="display:none">
<div id="detailsTable">
<h1 class="page-title">Land Lords List</h1>
<p><i class="icon-pencil modal-icon"></i>&nbsp;&nbsp;&nbsp;Please click on the following icon for writing review on the listed Land lord</p>
<p class="error-text"><i class="icon-zoom-in"></i>&nbsp;&nbsp;&nbsp;Please click on the following icon for viewing review on the listed Land lord</p>
  </div>

<div class="well" >
    <table class="table" id="ownerTable">
      <thead>
        <tr>
          <th style="width:20%">Name</th>
          <th style="width:15%">Mobile</th>
          <th style="width:55%">Address</th>
          <th >Action</th>
        </tr>
      </thead>
      <tbody id="searchReviewTable">


      </tbody>
    </table>
</div>
 </div>
<!-- end of the full Table -->
</div>
<!-- end of the data table -->

      </div>
  </div>




</div>

<div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">\D7</button>
    <h3 id="myModalLabel">Delete Confirmation</h3>
  </div>
  <div class="modal-body">

    <p class="error-text"><i class="icon-warning-sign modal-icon"></i>Are you sure you want to delete the user?</p>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
    <button class="btn btn-danger" data-dismiss="modal">Delete</button>
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
    <script src="resources/lib/bootstrap/js/bootstrap.js"></script>
	<script src="resources/lib/bootstrap/js/application.js"></script>


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

