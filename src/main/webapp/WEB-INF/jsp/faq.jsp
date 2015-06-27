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
                    <li><a href="aboutUs">About Us</a></li>
                       <li ><a href="searchReview">Search Reviews</a></li>
                       <li ><a href="writeReview">Write Reviews</a></li>
                       <li class="active"><a href="faq">Faq</a></li>
                   </ul>

                <div class="nav-header" data-toggle="collapse" data-target="#accounts-menu"><i class="icon-briefcase"></i>Account<span class="label label-info">+10</span></div>
                <ul id="accounts-menu" class="nav nav-list collapse in">
                  <li ><a href="#loginModal" data-toggle="modal">Sign In</a></li>
                  <li ><a href="signUp" target="_blank">Sign Up</a></li>
                  <li ><a href="resetPassword" target="_blank">Forgot Password</a></li>
                </ul>


                <div class="nav-header" data-toggle="collapse" data-target="#legal-menu"><i class="icon-legal"></i>Legal</div>
                 <ul id="legal-menu" class="nav nav-list collapse in">
                      <li ><a href="privacyPolicy">Privacy Policy</a></li>
                      <li ><a href="termsAndConditions">Terms and Conditions</a></li>
                    </ul>
            </div>
        </div>
        <div class="span9">
            <div class="faq-content">
    <h1 class="page-title">FAQ</h1>

    <div class="well">
        <h2>Most Frequently Asked</h2>
        <ol>
            <li><a href="#q1">What if I have a question?</a></li>
            <li><a href="#q2">Where can I get support?</a></li>
            <li><a href="#q3">How long does it take to fix a problem?</a></li>
            <li><a href="#q4">Who can help me out?</a></li>
            <li><a href="#q5">Where are you located?</a></li>
        </ol>

        <h2>About The Service</h2>
        <ol>
            <li><a href="#q11">How much does it cost?</a></li>
            <li><a href="#q12">Am I billed monthly or yearly?</a></li>
            <li><a href="#q13">What level of service do you have?</a></li>
            <li><a href="#q14">How do you secure your data?</a></li>
            <li><a href="#q15">Who can I contact for advertising?</a></li>
            <li><a href="#q16">Can I install custom fonts?</a></li>
            <li><a href="#q17">When does my service end?</a></li>
            <li><a href="#q18">Where can I find a custom design?</a></li>
        </ol>

        <hr>

        <h2>Most Frequently Asked Questions</h2>
        <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="icon-circle-arrow-up"></i> Top</a>
        <h3 id="q1">What if I have a question?</h3>
        <p>Tigernut avocado catsear beet greens silver beet coriander jícama cress. Desert raisin tomatillo turnip greens water chestnut parsnip dandelion cress gourd bell pepper garbanzo yarrow rutabaga fava bean spinach pea. Zucchini seakale bell pepper shallot silver beet tomatillo.</p>
        <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="icon-circle-arrow-up"></i> Top</a>
        <h3 id="q2">Where can I get support?</h3>
        <p>Desert raisin sorrel grape courgette pumpkin epazote maize nori pea garlic garlic desert raisin corn lotus root. Bunya nuts bitterleaf melon wakame celtuce beetroot water chestnut corn maize leek azuki bean turnip ricebean bamboo shoot quandong taro courgette tomato. Tomato celtuce chickweed rutabaga beet greens sweet pepper aubergine carrot kakadu plum yarrow garbanzo tigernut sierra leone bologi okra pea caulie grape.</p>
        <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="icon-circle-arrow-up"></i> Top</a>
        <h3 id="q3">How long does it take to fix a problem?</h3>
        <p>Courgette cabbage beetroot lentil garlic eggplant azuki bean potato onion cauliflower celery. Ricebean taro komatsuna fennel desert raisin sweet pepper cress bamboo shoot nori soko green bean catsear garlic black-eyed pea. Komatsuna water chestnut horseradish wakame scallion chard prairie turnip fennel quandong gram.</p>
        <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="icon-circle-arrow-up"></i> Top</a>
        <h3 id="q4">Who can help me out?</h3>
        <p>Maize epazote fava bean cabbage winter purslane turnip greens summer purslane scallion wattle seed green bean ricebean sierra leone bologi jícama bamboo shoot. Turnip greens amaranth gourd winter purslane pea grape prairie turnip taro sea lettuce chicory. Plantain kakadu plum melon sea lettuce soko garlic chicory.</p>
        <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="icon-circle-arrow-up"></i> Top</a>
        <h3 id="q5">Where are you located?</h3>
        <p>Sweet pepper quandong cucumber caulie eggplant water spinach. Azuki bean lentil aubergine sweet pepper komatsuna brussels sprout soybean tomato spring onion. Zucchini squash potato fennel bunya nuts broccoli rabe swiss chard. Brussels sprout gourd onion komatsuna fava bean mung bean earthnut pea seakale chard asparagus tomato scallion catsear.</p>

        <hr>

        <h2>About The Service</h2>
        <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="icon-circle-arrow-up"></i> Top</a>
        <h3 id="q11">How much does it cost?</h3>
        <p>Tigernut avocado catsear beet greens silver beet coriander jícama cress. Desert raisin tomatillo turnip greens water chestnut parsnip dandelion cress gourd bell pepper garbanzo yarrow rutabaga fava bean spinach pea. Zucchini seakale bell pepper shallot silver beet tomatillo.</p>
        <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="icon-circle-arrow-up"></i> Top</a>
        <h3 id="q12">Am I billed monthly or yearly?</h3>
        <p>Desert raisin sorrel grape courgette pumpkin epazote maize nori pea garlic garlic desert raisin corn lotus root. Bunya nuts bitterleaf melon wakame celtuce beetroot water chestnut corn maize leek azuki bean turnip ricebean bamboo shoot quandong taro courgette tomato. Tomato celtuce chickweed rutabaga beet greens sweet pepper aubergine carrot kakadu plum yarrow garbanzo tigernut sierra leone bologi okra pea caulie grape.</p>
        <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="icon-circle-arrow-up"></i> Top</a>
        <h3 id="q13">What level of service do you have?</h3>
        <p>Courgette cabbage beetroot lentil garlic eggplant azuki bean potato onion cauliflower celery. Ricebean taro komatsuna fennel desert raisin sweet pepper cress bamboo shoot nori soko green bean catsear garlic black-eyed pea. Komatsuna water chestnut horseradish wakame scallion chard prairie turnip fennel quandong gram.</p>
        <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="icon-circle-arrow-up"></i> Top</a>
        <h3 id="q14">How do you secure your data?</h3>
        <p>Maize epazote fava bean cabbage winter purslane turnip greens summer purslane scallion wattle seed green bean ricebean sierra leone bologi jícama bamboo shoot. Turnip greens amaranth gourd winter purslane pea grape prairie turnip taro sea lettuce chicory. Plantain kakadu plum melon sea lettuce soko garlic chicory.</p>
        <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="icon-circle-arrow-up"></i> Top</a>
        <h3 id="q15">Who can I contact for advertising?</h3>
        <p>Sweet pepper quandong cucumber caulie eggplant water spinach. Azuki bean lentil aubergine sweet pepper komatsuna brussels sprout soybean tomato spring onion. Zucchini squash potato fennel bunya nuts broccoli rabe swiss chard. Brussels sprout gourd onion komatsuna fava bean mung bean earthnut pea seakale chard asparagus tomato scallion catsear.</p>
        <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="icon-circle-arrow-up"></i> Top</a>
        <h3 id="q16">Can I install custom fonts?</h3>
        <p>Salsify ricebean yarrow broccoli tomato mustard rock melon carrot garlic chicory spring onion prairie turnip azuki bean peanut gumbo welsh onion squash burdock. Fava bean black-eyed pea water chestnut celery soybean cress nori. Desert raisin horseradish carrot black-eyed pea spinach soybean silver beet.</p>
        <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="icon-circle-arrow-up"></i> Top</a>
        <h3 id="q17">When does my service end?</h3>
        <p>Onion cabbage quandong seakale welsh onion mung bean pea sprouts scallion tatsoi bush tomato napa cabbage ricebean coriander parsnip beet greens chicory. Pea chard wattle seed black-eyed pea parsnip asparagus burdock chickweed jícama tomatillo radicchio plantain carrot tatsoi nori sorrel yarrow. Peanut avocado parsley celtuce salad jícama. Garbanzo winter purslane salsify bunya nuts kale onion. Squash kombu artichoke soko swiss chard water spinach.</p>
        <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="icon-circle-arrow-up"></i> Top</a>
        <h3 id="q18">Where can I find a custom design?</h3>
        <p>Parsnip napa cabbage wakame sorrel lentil silver beet tatsoi bitterleaf pea sprouts zucchini bush tomato gumbo. Fennel desert raisin grape amaranth soko earthnut pea corn plantain celtuce taro komatsuna bunya nuts. Desert raisin tigernut komatsuna tomato bok choy gram plantain black-eyed pea potato chard parsnip beet greens lentil.</p>
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


