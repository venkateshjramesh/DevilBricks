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
   <link href="<spring:url value="/resources/stylesheets/theme.css"/>"  rel="stylesheet" type="text/css" media="screen">
   <link href="<spring:url value="/resources/lib/font-awesome/css/font-awesome.css"/>" rel="stylesheet" type="text/css" media="screen">
   <link rel="stylesheet" href="<spring:url value="/resources/css/devilBrick.css"/>" type="text/css" media="screen">
   <link rel="stylesheet" href="<spring:url value="/resources/css/jquery.raty.css"/>" type="text/css" media="screen">

    <script type="text/javascript" src="<spring:url value="/resources/lib/jquery-1.8.1.min.js"/>"></script>
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
                        <li class="active"><a href="${pageContext.request.contextPath}/viewReview">View Reviews</a></li>
                        <li ><a href="${pageContext.request.contextPath}/searchReview">Search Reviews</a></li>
                        <li ><a href="${pageContext.request.contextPath}/writeReview">Write Reviews</a></li>
                        <li ><a href="${pageContext.request.contextPath}/faq">Faq</a></li>

                    </ul>
                <div class="nav-header" data-toggle="collapse" data-target="#accounts-menu"><i class="icon-briefcase"></i>Account<span class="label label-info">+10</span></div>
                <ul id="accounts-menu" class="nav nav-list collapse in">
                  <li ><a href="#loginModal" data-toggle="modal">Sign In</a></li>
                  <li ><a href="${pageContext.request.contextPath}/signUp" target="_blank">Sign Up</a></li>
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
			<p style="width:28%">${address}</p>

            <p><button  style='display:none' id="testButton" class="btn btn-primary">test button</button></p>
            <div id="rating"></div>
            <div id="totalUsers" style="font-size: 10px;"></div>

            <a href="#ratingModal" class="ratingClass" data-toggle="modal"><button  id="ratingButton" class="btn btn-primary btn-mini">Rate The Owner</button></a>
            <!-- voting markup -->
            <!-- <div class="voting_wrapper" id="XXXXXXX">
                <div class="voting_btn">
                    <div class="up_button">&nbsp;</div><span class="up_votes">0</span>
                </div>
                <div class="voting_btn">
                    <div class="down_button">&nbsp;</div><span class="down_votes">0</span>
                </div>
            </div>  -->
            <!-- voting markup end -->
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
         <p class="block-heading">
            <a href="#replyModal" data-toggle="modal"><button class="btn btn-primary "><i class="icon-user"></i>&nbsp;&nbsp;Reply</button></a>
        </p>
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
	<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="myModalLabel">Reviewer Details</h3>
	  </div>
	  <div class="modal-body">
	    <h4 >NAME</h4>
		<p id="bloggerName">Not available</p>
		<h4>MOBILE</h4>
		<p id="bloggerMobile">Not available</p>
		<h4>MAIL ID</h4>
		<p id="bloggerEmail">Not available</p>
		<h4>ADDRESS</h4>
		<p id="bloggerAddress">Not available</p>
	  </div>
	  <div class="modal-footer">
	    <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Close</button>
	  </div>
	</div>
	<!-- end of modal -->


	<!-- reply Modal -->
    	<div id="replyModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    	  <input type='hidden' id='hiddenVal'>
    	  <input type='hidden' id='hiddenMainIdVal'>
    	  <div class="modal-header">
    	    <h3 id="myModalLabel">Type your comments below</h3>
    	  </div>
    	  <div class="modal-body">
    	    <h4>Reply To</h4>
    		<p id="userDispName">Not Available</p>

             <h5>comments</h5>
            <p><textarea id='replyText' class='input-xlarge' rows='5' value='Smith' name='attitude'> </textarea></p>
            </div>

    	  <div class="modal-footer">
    	    <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true" id="closeReply">Close</button>
    	    <button class="btn btn-primary" id="submitReply">Submit</button>
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
        <p><a href="${pageContext.request.contextPath}/signUp" target="_blank">Sign Up</a></p

    </div>
	  <div class="modal-footer">
        <button class="btn btn-primary" id="submitLogin">Submit</button>
	    <button id="loginModelClose" class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Close</button>
	  </div>
	</div>
	<!-- end of modal -->

	<!--Rating Modal -->
    	<div id="ratingModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    	  <div class="modal-header">
    	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    	    <h3 id="myModalLabel">RATE THIS OWNER</h3>
    	  </div>
    	  <div class="modal-body">
    	    <div id="ratingByUser"></div>
    	    <div id="ratingMessage"></div>
    	  </div>
    	  <div class="modal-footer">
          	    <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Close</button>
          	  </div>
    	</div>
    	<!-- end of modal -->

            <!-- report Modal -->
            <div id="reportModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
              <input type='hidden' id='hiddenReportType'>
              <input type='hidden' id='hiddenReportIdVal'>
              <div class="modal-header">
                <h3 id="myModalLabel">Report To Us</h3>
              </div>
              <div class="modal-body">
                <h4>Report Category</h4>
                <div class="btn-group" data-toggle="buttons-radio" id="reportRadio">
                  <button type="button" class="theme reportClass btn btn-primary">Abusive</button>
                  <button type="button" class="theme reportClass btn btn-primary">Irrelevant</button>
                </div>

                <h5>Type your comments below</h5>
                <p><textarea id='reportText' class='input-xlarge' rows='5' value='Smith' name='attitude'> </textarea></p>
                </div>

              <div class="modal-footer">
                <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true" id="closeReport">Close</button>
                <button class="btn btn-primary" id="submitReport">Submit</button>
              </div>
            </div>
            <!-- end of modal -->




  </body>
</html>

