<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootstrap Admin</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="resources/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="resources/lib/bootstrap/css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="resources/stylesheets/theme.css">
    <link rel="stylesheet" href="resources/lib/font-awesome/css/font-awesome.css">

    <script src="resources/lib/jquery-1.8.1.min.js" type="text/javascript"></script>
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
						<li ><a href="aboutUs">About Us</a></li>
                        <li><a href="index.html">View Reviews</a></li>
                        <li ><a href="user.html">Search Reviews</a></li>
                        <li class="active"><a href="writeReview">Write Reviews</a></li>
                        <li ><a href="faq.html">Faq</a></li>

                    </ul>
                <div class="nav-header" data-toggle="collapse" data-target="#accounts-menu"><i class="icon-briefcase"></i>Account<span class="label label-info">+10</span></div>
                <ul id="accounts-menu" class="nav nav-list collapse in">
                  <li ><a href="sign-in.html">Sign In</a></li>
                  <li ><a href="sign-up.html">Sign Up</a></li>
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
        <input name="id" type="hidden">
        <label>First Name</label>
        <input name="firstName" type="text" class="input-xlarge">
        <label>Last Name</label>
        <input name="lastName" type="text" class="input-xlarge">
        <label>Email</label>
        <input name="email" type="text" class="input-xlarge">
		<label>Mobile</label>
        <input name="mobile" type="text" class="input-xlarge">

		<h3>Address</h3>
		<label>Plot Number</label>
        <input type="text" class="input-xlarge">
        <label>Appartment Name or Building Name</label>
        <input type="text" class="input-xlarge">
        <label>Door Number</label>
        <input type="text" class="input-xlarge">
		<label>Floor</label>
        <input type="text" class="input-xlarge">
        <label>Street Name</label>
        <input type="text" class="input-xlarge">
		<label>Area</label>
        <input type="text" class="input-xlarge">
		<label>City</label>
        <input type="text" class="input-xlarge">
		<label>State</label>
        <input type="text" class="input-xlarge">

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

        <label>Time Zone</label>
        <select name="DropDownTimezone" id="DropDownTimezone" class="input-xlarge">
          <option value="-12.0">(GMT -12:00) Eniwetok, Kwajalein</option>
          <option value="-11.0">(GMT -11:00) Midway Island, Samoa</option>
          <option value="-10.0">(GMT -10:00) Hawaii</option>
          <option value="-9.0">(GMT -9:00) Alaska</option>
          <option selected="selected" value="-8.0">(GMT -8:00) Pacific Time (US &amp; Canada)</option>
          <option value="-7.0">(GMT -7:00) Mountain Time (US &amp; Canada)</option>
          <option value="-6.0">(GMT -6:00) Central Time (US &amp; Canada), Mexico City</option>
          <option value="-5.0">(GMT -5:00) Eastern Time (US &amp; Canada), Bogota, Lima</option>
          <option value="-4.0">(GMT -4:00) Atlantic Time (Canada), Caracas, La Paz</option>
          <option value="-3.5">(GMT -3:30) Newfoundland</option>
          <option value="-3.0">(GMT -3:00) Brazil, Buenos Aires, Georgetown</option>
          <option value="-2.0">(GMT -2:00) Mid-Atlantic</option>
          <option value="-1.0">(GMT -1:00 hour) Azores, Cape Verde Islands</option>
          <option value="0.0">(GMT) Western Europe Time, London, Lisbon, Casablanca</option>
          <option value="1.0">(GMT +1:00 hour) Brussels, Copenhagen, Madrid, Paris</option>
          <option value="2.0">(GMT +2:00) Kaliningrad, South Africa</option>
          <option value="3.0">(GMT +3:00) Baghdad, Riyadh, Moscow, St. Petersburg</option>
          <option value="3.5">(GMT +3:30) Tehran</option>
          <option value="4.0">(GMT +4:00) Abu Dhabi, Muscat, Baku, Tbilisi</option>
          <option value="4.5">(GMT +4:30) Kabul</option>
          <option value="5.0">(GMT +5:00) Ekaterinburg, Islamabad, Karachi, Tashkent</option>
          <option value="5.5">(GMT +5:30) Bombay, Calcutta, Madras, New Delhi</option>
          <option value="5.75">(GMT +5:45) Kathmandu</option>
          <option value="6.0">(GMT +6:00) Almaty, Dhaka, Colombo</option>
          <option value="7.0">(GMT +7:00) Bangkok, Hanoi, Jakarta</option>
          <option value="8.0">(GMT +8:00) Beijing, Perth, Singapore, Hong Kong</option>
          <option value="9.0">(GMT +9:00) Tokyo, Seoul, Osaka, Sapporo, Yakutsk</option>
          <option value="9.5">(GMT +9:30) Adelaide, Darwin</option>
          <option value="10.0">(GMT +10:00) Eastern Australia, Guam, Vladivostok</option>
          <option value="11.0">(GMT +11:00) Magadan, Solomon Islands, New Caledonia</option>
          <option value="12.0">(GMT +12:00) Auckland, Wellington, Fiji, Kamchatka</option>
    </select>
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
    <script src="lib/bootstrap/js/bootstrap.js"></script>
	<script src="lib/bootstrap/js/application.js"></script>













  </body>
</html>

