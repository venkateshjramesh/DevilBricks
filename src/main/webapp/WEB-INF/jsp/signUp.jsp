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
    <link rel="stylesheet" href="resources/css/devilBrick.css">


    <script src="resources/lib/jquery-1.8.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="resources/javascripts/jquery.raty.js"></script>
    <script type="text/javascript" src="resources/javascripts/jquery.cookie.js"></script>
    <script src="resources/javascripts/jquery.dataTables.min.js" type="text/javascript"></script>
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
                    
                </ul>
                <a class="brand" href="index.html"><span class="first">Your</span> <span class="second">Company</span></a>
            </div>
        </div>
    </div>
    

    <div class="container-fluid">
        
        <div class="row-fluid">
    <div class="span4 offset4 dialog">
        <div class="block">
            <div class="block-heading">Sign Up</div>
            <div class="block-body">
            <h6><i style="color:red" class="icon-asterisk"></i>&nbsp;&nbsp;&nbsp;The fields marked with this symbol are mandatory</h6>
                    <label>First Name&nbsp;&nbsp;<i style="color:red" class="icon-asterisk"></i></label>
                    <input id="firstName" type="text" class="span12">
                    <span style="display:none;" id="firstNameMsg"><font size="2" color="Blue"><b>Only alphabets and space allowed.</b></font></span>
                    <label>Last Name&nbsp;&nbsp;<i style="color:red" class="icon-asterisk"></i></label>
                    <input id="lastName" type="text" class="span12">
                    <span style="display:none;" id="lastNameMsg"><font size="2" color="Blue"><b>Only alphabets and space allowed.</b></font></span>
                    <label>Email Address&nbsp;&nbsp;<i style="color:red" class="icon-asterisk"></i></label>
                    <input id="emailId" type="text" class="span12">
                    <span style="display:none;" id="emailIdMsg"><font size="2" color="red"><b>E mail should adhere to proper email format.</b></font></span>
                    <label class="remember-me"><input type="checkbox" id="showEmail">Show my Email Id to Public</label>
                    <label style="font-size:80%"><b>NOTE:</b> By clicking this option your email id is visible to public</label>
                    <br>
                    <label>Mobile No&nbsp;&nbsp;<i style="color:red" class="icon-asterisk"></i></label>
                    <input id="mobile" type="text" class="span12" maxlength=10>
                    <span style="display:none;" id="mobileMsg"><font size="2" color="Blue"><b>Only 10 digit Indian Mobile Numbers allowed.</b></font></span>
                    <label class="remember-me"><input type="checkbox" id="showMobile">Show my Mobile No to Public</label>
                    <label style="font-size:80%"><b>NOTE:</b> By clicking this option your mobile-no is visible to public</label>

                    <label>Address&nbsp;&nbsp;<i style="color:red" class="icon-asterisk"></i></label>
                    <input id="address" type="text" class="span12">
                    <label class="remember-me"><input type="checkbox" id="showAddress">Show my Address to Public</label>
                    <label style="font-size:80%"><b>NOTE:</b> By clicking this option your address is visible to public</label>
                    <label>Username&nbsp;&nbsp;<i style="color:red" class="icon-asterisk"></i></label>
                    <input id="userName" type="text" class="span12">
                    <span style="display:none;" id="userNameMsg"><font size="2" color="Blue"><b>Only alphabets allowed. Space not allowed</b></font></span>
                    <label>Password&nbsp;&nbsp;<i style="color:red" class="icon-asterisk"></i></label>
                    <input id="password" type="password" class="span12">
                    <a id="signUpButton" class="btn btn-primary pull-right">Sign Up!</a>
                    <label class="remember-me"><input type="checkbox" id="agree"> I agree with the <a href="termsAndConditions" target="_blank">Terms and Conditions</a></label>
                    <div class="clearfix"></div>
            </div>
        </div>
        <p><a href="privacyPolicy" target="_blank">Privacy Policy</a></p>
    </div>
</div>


    

    

    

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="resources/lib/bootstrap/js/bootstrap.js"></script>
    <script src="resources/lib/bootstrap/js/application.js"></script>
    
    
    
    
    
    
    
    
    
    
    
    

  </body>
</html>


