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
   <link rel="stylesheet" href="<spring:url value="/resources/css/devilBrick.css"/>" type="text/css" media="screen">

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
                        <li class="active"><a href="${pageContext.request.contextPath}/viewReview">View Reviews</a></li>
                        <li ><a href="${pageContext.request.contextPath}/searchReview">Search Reviews</a></li>
                        <li ><a href="${pageContext.request.contextPath}/writeReview">Write Reviews</a></li>
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
            <script type="text/javascript" src="lib/jqplot/jquery.jqplot.min.js"></script>
<script type="text/javascript" charset="utf-8" src="javascripts/graphDemo.js"></script>

<!-- <div class="stats">
    <p class="stat"><span class="number">53</span>tickets</p>
    <p class="stat"><span class="number">27</span>tasks</p>
    <p class="stat"><span class="number">15</span>waiting</p>
</div> -->
<h1 class="page-title">View Reviews</h1>

<div class="row-fluid">
    <div class="block">
        <p class="block-heading" data-toggle="collapse" data-target="#chart-container">Land Lord Details</p>
        <div id="chart-container" class="block-body collapse in">
            <!-- <div id="line-chart"></div> -->
			<!-- Start of custom content -->

        <input type="hidden" id="ownerIdForReview" value="${id}">
        <div class="block-body">
             <h4>NAME</h4>
			<p>${firstName},${lastName}</p>
			<h4>MOBILE</h4>
			<p>${mobile}</p>
			<h4>MAIL ID</h4>
			<p>${email}</p>
			<h4>ADDRESS</h4>
			<p>#44, aaa street,</p>
			<p>bbb nagar,</p>
			<p>zzz area.</p>
            <p><button  id="testButton" class="btn btn-primary">test button</button></p>
        </div>

			<!-- end of custom content -->

        </div>
    </div>
</div>

<div id="reviewBlock">
<div class="row-fluid">
    <div class="block span12">
        <p class="block-heading"><u>Venkatesh Ramesh</u> &nbsp;&nbsp;&nbsp;
		<a href="#myModal" data-toggle="modal"><button class="btn btn-primary "><i class="icon-user"></i>&nbsp;&nbsp;Contact User</button></a>
		&nbsp;&nbsp;<span class="badge badge-success">You have contacted this user</span>
		</p>
        <div class="block-body">
            <h5>Tip of the Day</h5>
            <p>Fava bean jícama seakale beetroot courgette shallot amaranth pea garbanzo carrot radicchio peanut leek pea sprouts arugula brussels sprout green bean. Spring onion broccoli chicory shallot winter purslane pumpkin gumbo cabbage squash beet greens lettuce celery. Gram zucchini swiss chard mustard burdock radish brussels sprout groundnut. Asparagus horseradish beet greens broccoli brussels sprout bitterleaf groundnut cress sweet pepper leek bok choy shallot celtuce scallion chickpea radish pea sprouts.</p>

            <p><a class="btn btn-primary btn-medium">Learn more &raquo;</a></p>
        </div>
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

    <script type="text/javascript" src="<spring:url value="/resources/lib/bootstrap/js/bootstrap.js"/>"></script>





	<!-- Modal -->
	<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="myModalLabel">Reviewer Details</h3>
	  </div>
	  <div class="modal-body">
	    <h4>NAME</h4>
		<p>Illangovan</p>
		<h4>MOBILE</h4>
		<p>9444852426</p>
		<h4>MAIL ID</h4>
		<p>xxx@yyy@zzz.com</p>
		<h4>ADDRESS</h4>
		<p>#44, aaa street,</p>
		<p>bbb nagar,</p>
		<p>zzz area.</p>
	  </div>
	  <div class="modal-footer">
	    <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Close</button>
	  </div>
	</div>
	<!-- end of modal -->











  </body>
</html>

