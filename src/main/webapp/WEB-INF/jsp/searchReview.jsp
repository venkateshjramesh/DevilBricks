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

    <script src="resources/lib/jquery-1.8.1.min.js" type="text/javascript"></script>

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
                        <li ><a href="viewReview">View Reviews</a></li>
                        <li class="active"><a href="searchReview">Search Reviews</a></li>
                        <li ><a href="writeReview">Write Reviews</a></li>
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
            <h1 class="page-title">Search Reviews</h1>
<div class="btn-toolbar">
    <!-- <button class="btn btn-primary"><i class="icon-save"></i> Submit</button> -->
    <!-- <a href="#myModal" data-toggle="modal" class="btn">Delete</a>-->
  <div class="btn-group">
  </div>
</div>
<div class="well">

    <div id="myTabContent" class="tab-content">


    <form id="tab2" method="get" action="${pageContext.request.contextPath}/searchOwner">
        <h3>Contact Details </h3>

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
        <input type="text"  class="input-xlarge">
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
        <div>
            <button class="btn btn-primary">Search</button>
        </div>
    </form>

	<!-- start of the data table -->
<div id="detailsTable">
<h1 class="page-title">Land Lords List</h1>
<p><i class="icon-pencil modal-icon"></i>&nbsp;&nbsp;&nbsp;Please click on the following icon for writing review on the listed Land lord</p>
<p class="error-text"><i class="icon-zoom-in"></i>&nbsp;&nbsp;&nbsp;Please click on the following icon for viewing review on the listed Land lord</p>
  </div>

<div class="well">
    <table class="table">
      <thead>
        <tr>
          <th>#</th>
          <th>Name</th>
          <th>Mobile</th>
          <th>Address</th>
          <th style="width: 26px;"></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>Mark</td>
          <td>8888554524</td>
          <td>#47, 1st Floor, Rainbow Flats <br> Dr Ambedkar Salai <br> Enfield Avenue 3 rd Street <br> Madipakkam <br> Chennai - 600091</td>
          <td>
              <a href="user.html" ><i class="icon-pencil"></i></a>
              <a href="user.html"><i class="icon-zoom-in"></i></a>
          </td>
        </tr>
        <tr>
          <td>2</td>
          <td>Ashley</td>
          <td>8888554524</td>
          <td>#47, 1st Floor, Rainbow Flats <br> Dr Ambedkar Salai <br> Enfield Avenue 3 rd Street <br> Madipakkam <br> Chennai - 600091</td>
          <td>
              <a href="user.html"><i class="icon-pencil"></i></a>
              <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
          </td>
        </tr>
        <tr>
          <td>3</td>
          <td>Audrey</td>
          <td>8888554524</td>
          <td>#47, 1st Floor, Rainbow Flats <br> Dr Ambedkar Salai <br> Enfield Avenue 3 rd Street <br> Madipakkam <br> Chennai - 600091</td>
          <td>
              <a href="user.html"><i class="icon-pencil"></i></a>
              <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
          </td>
        </tr>
        <tr>
          <td>4</td>
          <td>John</td>
          <td>8888554524</td>
          <td>#47, 1st Floor, Rainbow Flats <br> Dr Ambedkar Salai <br> Enfield Avenue 3 rd Street <br> Madipakkam <br> Chennai - 600091</td>
          <td>
              <a href="user.html"><i class="icon-pencil"></i></a>
              <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
          </td>
        </tr>
        <tr>
          <td>5</td>
          <td>Aaron</td>
          <td>8888554524</td>
          <td>#47, 1st Floor, Rainbow Flats <br> Dr Ambedkar Salai <br> Enfield Avenue 3 rd Street <br> Madipakkam <br> Chennai - 600091</td>
          <td>
              <a href="user.html"><i class="icon-pencil"></i></a>
              <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
          </td>
        </tr>
        <tr>
          <td>6</td>
          <td>Chris</td>
          <td>8888554524</td>
          <td>#47, 1st Floor, Rainbow Flats <br> Dr Ambedkar Salai <br> Enfield Avenue 3 rd Street <br> Madipakkam <br> Chennai - 600091</td>
          <td>
              <a href="user.html" class="btn btn-primary"><i class="icon-pencil"></i>Write Review</a>
              <a href="user.html" class="btn btn-primary"><i class="icon-zoom-in"></i>View Review</a>
          </td>
        </tr>
      </tbody>
    </table>
</div>
<div class="pagination">
    <ul>
        <li><a href="#">Prev</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">Next</a></li>
    </ul>
</div>

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













  </body>
</html>

