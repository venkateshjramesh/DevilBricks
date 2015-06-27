

$( document ).ready(function() {
//validations for write review
$("#pinCode").bind("blur keyup", function(){
    var temp = $('#pinCode').val();
    temp = temp.replace(/[^0-9]/g, '');
    $('#pinCode').val(temp);
    if($("#pinCode").val().length < 6 && !$.trim($("#pinCode").val()) == '') {
        $('#pinCodeMsg').show();
        $('#pinCodeMsg font').attr('color','red')
        } else {
        $('#pinCodeMsg font').attr('color','blue')
        $('#pinCodeMsg').hide();
        }

});

$("#pinCode").bind("keyup", function(){
        //if pincode is equal to 6 thenn do follows
        if($.trim($("#pinCode").val()).length == 6){
        post_data = {'pinCode':$("#pinCode").val()};
        //alert(post_data.pinCode)
        $.post('/spring-mongodb-tutorial/searchForPinCode', post_data,  function(response) {
        $('#taluk').val(response.cityZip.taluk);
         $('#district').val(response.cityZip.districtName);
         $('#state').val(response.cityZip.stateName);
      },'json');
        }

});

$("#pinCode").bind("blur", function(){
    $('#pinCodeMsg').hide();

});

$("#pinCode").bind("focus", function(){
    $('#pinCodeMsg').show() ;
});

$("#state").bind("blur keyup", function(){
    var temp = $('#state').val();
    temp = temp.replace(/[^a-z A-Z]/g, '');
    $('#state').val(temp);
});

$("#state").bind("blur", function(){
    $('#stateMsg').hide();

});

$("#state").bind("focus", function(){
    $('#stateMsg').show() ;
});

$("#district").bind("blur keyup", function(){
    var temp = $('#district').val();
    temp = temp.replace(/[^a-z A-Z]/g, '');
    $('#district').val(temp);
});

$("#district").bind("blur", function(){
    $('#districtMsg').hide();

});

$("#district").bind("focus", function(){
    $('#districtMsg').show() ;
});

$("#taluk").bind("blur keyup", function(){
    var temp = $('#taluk').val();
    temp = temp.replace(/[^a-z A-Z]/g, '');
    $('#taluk').val(temp);
});

$("#taluk").bind("blur", function(){
    $('#talukMsg').hide();

});

$("#taluk").bind("focus", function(){
    $('#talukMsg').show() ;
});

$("#city").bind("blur keyup", function(){
    var temp = $('#city').val();
    temp = temp.replace(/[^a-z A-Z]/g, '');
    $('#city').val(temp);
});

$("#city").bind("blur", function(){
    $('#cityMsg').hide();

});

$("#city").bind("focus", function(){
    $('#cityMsg').show() ;
});


$("#area").bind("blur keyup", function(){
    var temp = $('#area').val();
    temp = temp.replace(/[^a-z A-Z]/g, '');
    $('#area').val(temp);
});

$("#area").bind("blur", function(){
    $('#areaMsg').hide();

});

$("#area").bind("focus", function(){
    $('#areaMsg').show() ;
});

$("#landmark").bind("blur keyup", function(){
    var temp = $('#landmark').val();
    temp = temp.replace(/[^a-z A-Z0-9]/g, '');
    $('#landmark').val(temp);
});

$("#landmark").bind("blur", function(){
    $('#landmarkMsg').hide();

});

$("#landmark").bind("focus", function(){
    $('#landmarkMsg').show() ;
});

$("#streetName").bind("blur keyup", function(){
    var temp = $('#streetName').val();
    temp = temp.replace(/[^a-z A-Z]/g, '');
    $('#streetName').val(temp);
});

$("#streetName").bind("blur", function(){
    $('#streetNameMsg').hide();

});

$("#streetName").bind("focus", function(){
    $('#streetNameMsg').show() ;
});

$("#floor").bind("blur keyup", function(){
    var temp = $('#floor').val();
    temp = temp.replace(/[^a-zA-Z0-9]/g, '');
    $('#floor').val(temp);
});

$("#floor").bind("blur", function(){
    $('#floorMsg').hide();

});

$("#floor").bind("focus", function(){
    $('#floorMsg').show() ;
});

$("#doorNo").bind("blur keyup", function(){
    var temp = $('#doorNo').val();
    temp = temp.replace(/[^a-zA-Z0-9]/g, '');
    $('#doorNo').val(temp);
});

$("#doorNo").bind("blur", function(){
    $('#doorNoMsg').hide();
    $('#doorNoMsg1').hide();

});

$("#doorNo").bind("focus", function(){
    $('#doorNoMsg').show() ;
    $('#doorNoMsg1').show() ;
});

$("#appartmentName").bind("blur keyup", function(){
    var temp = $('#appartmentName').val();
    temp = temp.replace(/[^a-z A-Z0-9]/g, '');
    $('#appartmentName').val(temp);
});

$("#appartmentName").bind("blur", function(){
    $('#appartmentNameMsg').hide();

});

$("#appartmentName").bind("focus", function(){
    $('#appartmentNameMsg').show() ;
});

$("#plotNumber").bind("blur keyup", function(){
    var temp = $('#plotNumber').val();
    temp = temp.replace(/[^a-zA-Z0-9]/g, '');
    $('#plotNumber').val(temp);
});

$("#plotNumber").bind("blur", function(){
    $('#plotNumberMsg').hide();
     $('#plotNumberMsg1 ').hide();
});

$("#plotNumber").bind("focus", function(){
    $('#plotNumberMsg').show() ;
    $('#plotNumberMsg1').show() ;
});

$("#userName").bind("blur keyup", function(){
    var temp = $('#userName').val();
    temp = temp.replace(/[^a-zA-Z]/g, '');
    $('#userName').val(temp);
});

$("#userName").bind("blur", function(){
    $('#userNameMsg').hide();
});

$("#userName").bind("focus", function(){
    $('#userNameMsg').show() ;
});

$("#firstName").bind("blur keyup", function(){
    var temp = $('#firstName').val();
    temp = temp.replace(/[^a-z A-Z]/g, '');
    $('#firstName').val(temp);
});

$("#firstName").bind("blur", function(){
    $('#firstNameMsg').hide();
});

$("#firstName").bind("focus", function(){
    $('#firstNameMsg').show() ;
});

//focus on the first name
$('#firstName').focus() ;

$("#lastName").bind("blur keyup", function(){
    var temp = $('#lastName').val();
    temp = temp.replace(/[^a-z A-Z]/g, '');
    $('#lastName').val(temp);
});

$("#lastName").bind("blur", function(){
    $('#lastNameMsg').hide();
});

$("#lastName").bind("focus", function(){
    $('#lastNameMsg').show() ;
});



$("#mobile").bind("blur keyup", function(){
    var temp = $('#mobile').val();
    temp = temp.replace(/[^0-9]/g, '');
    $('#mobile').val(temp);
});




$("#mobile").bind("blur keyup", function(){
if($("#mobile").val().length < 10 && !$.trim($("#mobile").val()) == '') {
    $('#mobileMsg').show();
    $('#mobileMsg font').attr('color','red')
    } else {
    $('#mobileMsg font').attr('color','blue')
    $('#mobileMsg').hide();
    }
});

$("#email").bind("blur keyup", function(e){
    var regex = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    testValue = regex.test($("#email").val());
    if(!testValue && !$.trim($("#email").val()) == '')
     $('#emailMsg').show() ;
     else
     $('#emailMsg').hide() ;
});

$("#emailId").bind("blur keyup", function(e){
    var regex = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    testValue = regex.test($("#emailId").val());
    if(!testValue && !$.trim($("#emailId").val()) == '')
     $('#emailIdMsg').show() ;
     else
     $('#emailIdMsg').hide() ;
});




         //http://localhost:8080/spring-mongodb-tutorial/searchOwner?id=&firstName=kingsly&lastName=k&email=k&mobile=k

    $("#submitForm").click(function(){
        var firstNameSearch = $('#firstName').val();
        var lastNameSearch = $('#lastName').val();
        var emailSearch = $('#email').val();
        var mobileSearch = $('#mobile').val();
        var plotNumberSearch = $('#plotNumber').val();
        var appartmentNameSearch = $('#appartmentName').val();
        var doorNoSearch = $('#doorNo').val();
        var floorSearch = $('#floor').val();
        var streetNameSearch = $('#streetName').val();
        var landmarkSearch = $('#landmark').val();
        var areaSearch = $('#area').val();
        var citySearch = $('#city').val();
        var talukSearch = $('#taluk').val();
        var districtSearch = $('#district').val();
        var stateSearch = $('#state').val();
        var pinCodeSearch = $('#pinCode').val();

        if($.trim(firstNameSearch) == ''){
            alert("FirstName is mandatory");
            $('#firstName').focus();
            return false;
        }
        if($.trim(pinCodeSearch) == ''){
            alert("PinCode is mandatory");
            $('#pinCode').focus();
            return false;
        }

        if($.trim(pinCodeSearch).length < 6){
                    alert("Please enter a valid PinCode");
                    $('#pinCode').focus();
                    return false;
                }

        if(!$.trim(emailSearch) == ''){
        var regex = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
            testValue = regex.test($("#email").val());
            if(!testValue && !$.trim($("#email").val()) == ''){
            alert("E mail should adhere to proper format");
            $('#email').focus();
            return false;
            }
        }

      if(!$.trim(mobileSearch) == ''){
            if($("#mobile").val().length < 10 && !$.trim($("#mobile").val()) == '') {
                alert("Please enter 10 digit mobile number");
                $('#mobile').focus();
                return false;
                }
            }



        var htmlString = "";
        $.ajax({
            url: "/spring-mongodb-tutorial/searchOwner?id=&firstName="+firstNameSearch+"&lastName="+lastNameSearch+"&email="+emailSearch+"&mobile="+mobileSearch+"&plotNumber="+plotNumberSearch+"&appartmentName="+appartmentNameSearch+"&doorNo="+doorNoSearch+"&floor="+floorSearch+"&streetName="+streetNameSearch+"&landmark="+landmarkSearch+ "&area="+areaSearch+"&city="+citySearch+"&taluk="+talukSearch+"&district="+districtSearch+"&state="+stateSearch+"&pinCode="+pinCodeSearch,
            type: "GET",
            dataType: "json",
            success: function(response) {
                //alert(response)
                if(response.ownerList.length == 1 && response.ownerList[0].pinCode == "500"){
                $('#fullTable').hide();
                alert("ResultSet size too large. Apply more filters to narrow-down the Result")
                return false;
                }
                for(var i=0;i<response.ownerList.length;i++) {
                var obj = response.ownerList[i];

                var plotNumber = "";
                var appartmentName = "";
                var doorNo = "";
                var floor = "";
                var streetName = "";
                var landmark = "";
                var area = "";
                var city = "";
                var taluk = "";
                var district = "";
                var state = "";
                var pinCode = "";

                if(obj.plotNumber)
                plotNumber = "Plot No: " +obj.plotNumber + ", ";
                if(obj.appartmentName)
                appartmentName = obj.appartmentName + ", ";
                if(obj.doorNo)
                doorNo = "Door No: " +obj.doorNo + ", ";
                if(obj.floor)
                floor = "Floor No: " + obj.floor + ", ";
                if(obj.streetName)
                streetName = obj.streetName + ", ";
                if(obj.landmark)
                landmark = "LandMark: (" +obj.landmark + "), ";
                if(obj.area)
                area = obj.area + ", ";
                if(obj.city)
                city = obj.city + "- ";
                if(obj.taluk)
                taluk = "Taluk: " + obj.taluk + ", ";
                if(obj.district)
                district = "District Name: " + obj.district + ", ";
                if(obj.state)
                state = obj.state + ", ";
                if(obj.pinCode)
                pinCode = obj.pinCode;




                 var addressString = "<td>"+plotNumber+appartmentName+doorNo+floor+streetName+landmark+area+taluk+district+state+city+pinCode+"</td>" ;

                  htmlString = htmlString + "<tr><td style='width:20%'>"+obj.firstName+" "+obj.lastName+"</td><td style='width:15%'>"+
                  ""+obj.mobile+"</td style='width:55%'>"+addressString+"<td style='width:10%'><a id="+obj.id+" href='/spring-mongodb-tutorial/writeReview/"+obj.id+"'><i class='icon-pencil'></i></a>" +
                  "<a style='margin-left: 10%;' id="+obj.id+" href='/spring-mongodb-tutorial/viewReview/"+obj.id+"'><i class='icon-zoom-in'></i></a></td></tr>";
                }

                 $('#ownerTable').DataTable().destroy();
                $('#searchReviewTable').empty();
                $('#searchReviewTable').html(htmlString);
                $('#ownerTable').DataTable({"bAutoWidth": false});
                 //$('#ownerTable').DataTable({"bAutoWidth": false });

                 $('#fullTable').show();

            },
            error: function(xhr) {
                //alert(xhr)
            }
    });

});


function testButton(){
   // $('#testButton').click(function(){
    var htmlString = "";
    var keyValue = [{"key":"behaviour","value":"LandLords Behaviour"},
    {"key":"attitude","value":"LandLords Attitude"},
    {"key":"ebBill","value":"Eb Bill and Electricity Usage"},
    {"key":"maintainance","value":"Maintainance and its Charges"},
    {"key":"guest","value":"Problems Arising due to Guest"},
    {"key":"hiddenCost","value":"HiddenCost Problem"} ,
    {"key":"water","value":"Problems wrt Water"},
    {"key":"parking","value":"Problems wrt PRaking"} ,
    {"key":"otherComments","value":"Any Other Comments"}  ,
    {"key":"suggestion","value":"Any Other Suggestion"},
    {"key":"replies","value":""}];
         $.ajax({
                    url: "/spring-mongodb-tutorial/searchReviewForId?id=" + $('#ownerIdForReview').val(),
                    type: "GET",
                    dataType: "json",
                    contentType: "application/json",
                    success: function(response) {
                        //alert(response)
                        //iterate each and every review array
                        for(var i=0;i < response.reviewList.length;i++) {

                         var temp = response.reviewList[i];

                         var innerHtmlString = "";
                         //iterate each and every kay value pair and check for null
                         for(var j=0;j<keyValue.length;j++) {
                             if(temp[keyValue[j].key] && keyValue[j].key != "replies")
                             innerHtmlString = innerHtmlString + "<h5>"+keyValue[j].value+"</h5><p>"+temp[keyValue[j].key]+"</p>";

                             if(keyValue[j].key == "replies"){
                              var replyHtml = formReplyHtml(temp[keyValue[j].key],temp["id"],temp.displayName);
                             }
                         }

                        htmlString = htmlString +
                         "<div class='row-fluid'>"+
                             "<div id='span12_"+temp.id+"' class='block span12' >"  +
                                 "<p class='block-heading'><u>"+temp.displayName+"</u> &nbsp;&nbsp;&nbsp;"  +
                         		"<a href='#myModal' data-toggle='modal'><button id='contactUser_span12_"+temp.id+"' class='btn btn-primary btn-mini'><i class='icon-user'></i>&nbsp;&nbsp;Contact User</button></a>"+
                         		"&nbsp;&nbsp;<span class='badge badge-success "+temp.displayName+"' style='display:none'>You have contacted this user</span>" +
                         		"<span style='float:right;font-weight: normal;font-size:90%'>"+new Date(temp.creationDate)+"</span>"  +
                         		"</p>"+
                         		 "<div class='voting_wrapper'> "+
                                "    <div class='voting_btn'>"+
                                 "       <div class='up_button'>&nbsp;</div><span class='up_votes'>0</span>"+
                                  "  </div>"+
                                   " <div class='voting_btn'>"+
                                    "    <div class='down_button'>&nbsp;</div><span class='down_votes'>0</span>"+
                                    "</div>"+
                                "</div>"+

                                 "<div id='innerHtmlString_"+temp.id+"' class='block-body' style='height:250px;overflow:hidden;'>"  +
                                      innerHtmlString +
                                      "</div>"+
                                     "<a id='learnMoreButton_"+temp.id+"' class='learnMoreButtonClass btn btn-primary btn-small' onclick='resizeBlockFunction(\"innerHtmlString_"+temp.id+"\")'>Show more &raquo;</a>"+
                             "<p class='block-heading'><a class='anchorClass' href='#replyModal' data-toggle='modal'>"  +
                              "<button onclick='replyBox(\""+temp.id+"\",\""+temp.id+"\",\""+temp.displayName+"\")' class='btn btn-primary btn-mini'><i class='icon-share-alt'></i>&nbsp;&nbsp;Reply</button></a>"  +
                              "<a style='margin-left:.5%' href='#reportModal' data-toggle='modal' class='anchorReportClass'>" +
                                "<button class='btn btn-primary btn-mini' onclick='reportBox(\""+temp.id+"\",\"review\")'>" +
                                "<i class='icon-eye-open'></i>&nbsp;&nbsp;Report</button></a>"   +
                              "</p>"   +
                             "</div>"  + replyHtml +
                         "</div> "

                        } //end of for loop
                       $('#reviewBlock').html(htmlString);

                       callVotingFunction();

                    },
                    error: function(xhr) {
                        //alert(xhr)
                    }
            });  //end of ajax

 //    });

}  //end of testButton

if($('#ownerIdForReview').val())
testButton();

            //initialize rating for modal and save the rating
             $('#ratingByUser').raty({
                     half: true
                     });
             $("#ratingByUser > img").click(function(){
                 if($('#ratingByUser').attr('readonly') == 'readonly'){
                 alert('You have already Rated. Happy Blogging') ;
                 return false;
                 }
                  var unique_id = $('#ownerIdForReview').val();
                  var score = $('#ratingByUser').find('input[type=hidden]:first').val();   //record clicked
                  var userId = $.cookie('devilBricks').split("!")[0];
                  post_data = {'id':unique_id,'score':score,'userId':userId};

                  $.post('/spring-mongodb-tutorial/changeRatingForId', post_data,  function(response) {
                            $('#ratingByUser').raty('readOnly', true);
                            $('#ratingByUser').attr('readOnly', 'readOnly');
                            $('#ratingMessage').text(response.ratingMessage);
                           //retrive votes from server, replace each vote count text  //finalRating

                           //get the rating for the existing
                            $.post('/spring-mongodb-tutorial/searchRatingForId', post_data,  function(response) {



                                    //retrive votes from server, replace each vote count text  //finalRating
                                    $('#rating').raty( {half: true});
                                    $('#rating').raty('score', response.finalRating);
                                    $('#rating').raty('readOnly', true);
                                    $('#totalUsers').text('RATED USERS : ' + response.totalUsers);
                                },'json');

                       },'json');
                   //save to database
              });

     $('#submitReply').click(function(){
           var idValue = $('#hiddenVal').val();
           var idMainValue = $('#hiddenMainIdVal').val();
           var displayName = $.cookie('devilBricks').split("!")[1];
           var replyText =$('#replyText').val();
           var userId = $.cookie('devilBricks').split("!")[0];
           var replyToName = $('#userDispName').text();
           //alert(displayName +":::" + idValue);
                    $.ajax({
                               url: "/spring-mongodb-tutorial/saveReply",
                               type: "POST",
                               data: "id=" + idValue+ "&displayName=" + displayName + "&replyText=" + replyText + "&idMainValue=" + idMainValue + "&userId=" + userId + "&replyToName=" + replyToName,
                               //dataType: "json",
                               //contentType: "application/json",
                               success: function(response) {
                                   //alert(response)
                                   //alert(response);
                                     $('#closeReply').click();
                                     alert("Reply successfully Saved.")

                               },
                               error: function(xhr) {
                                   //alert(xhr)
                               }
                       });
     });


     $('#submitReport').click(function(){
                var hiddenReportType = $('#hiddenReportType').val();
                var hiddenReportIdVal = $('#hiddenReportIdVal').val();
                var displayName = $.cookie('devilBricks').split("!")[1];
                var reportText =$('#reportText').val();
                var userId = $.cookie('devilBricks').split("!")[0];
                var theme = $('.theme[class*="active"]').text();
                //alert(displayName +":::" + idValue);
                         $.ajax({
                                    url: "/spring-mongodb-tutorial/saveReport",
                                    type: "POST",
                                    data: "hiddenReportType=" + hiddenReportType+ "&hiddenReportIdVal=" + hiddenReportIdVal + "&displayName=" + displayName + "&reportText=" + reportText + "&userId=" + userId + "&theme=" + theme,
                                    //dataType: "json",
                                    //contentType: "application/json",
                                    success: function(response) {
                                        //alert(response)
                                        //alert(response);
                                          $('#closeReport').click();
                                          alert("Reported successfully. Happy Blogging")

                                    },
                                    error: function(xhr) {
                                        //alert(xhr)
                                    }
                            });
          });

     $('#signUpButton').click(function(){
                var firstName = $('#firstName').val();
                var lastName = $('#lastName').val();
                var emailId = $('#emailId').val();
                var userName =$('#userName').val();
                var password =$('#password').val();
                var mobile =$('#mobile').val();
                var address = $('#address').val();
                var showEmail =$("input[id=showEmail]:checked").length;
                var showMobile =$("input[id=showMobile]:checked").length;
                var showAddress =$("input[id=showAddress]:checked").length;
                var agree =$("input[id=agree]:checked").length;

                if($.trim(firstName) == ''){
                    alert("FirstName is mandatory");
                    $('#firstName').focus();
                    return false;
                }

                if($.trim(lastName) == ''){
                    alert("LastName is mandatory");
                    $('#lastName').focus();
                    return false;
                }

                if($.trim(emailId) == ''){
                    alert("Email Id is mandatory");
                    $('#emailId').focus();
                    return false;
                }

                 if($.trim(mobile) == ''){
                    alert("Mobile No is mandatory");
                    $('#mobile').focus();
                    return false;
                }

                 if($.trim(address) == ''){
                    alert("Address is mandatory");
                    $('#address').focus();
                    return false;
                }

                 if($.trim(mobile) == ''){
                    alert("Mobile No is mandatory");
                    $('#mobile').focus();
                    return false;
                }

                if($.trim(userName) == ''){
                    alert("UserName is mandatory");
                    $('#userName').focus();
                    return false;
                }
                if($.trim(password) == ''){
                    alert("Password is mandatory");
                    $('#password').focus();
                    return false;
                }

                 if(!$.trim($("#emailId").val()) == ''){
                            var regex = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
                                testValue = regex.test($("#emailId").val());
                                if(!testValue && !$.trim($("#emailId").val()) == ''){
                                alert("E mail should adhere to proper format");
                                $('#emailId').focus();
                                return false;
                                }
                            }

                          if(!$.trim($("#mobile").val()) == ''){
                            if($("#mobile").val().length < 10 && !$.trim($("#mobile").val()) == '') {
                                alert("Please enter 10 digit mobile number");
                                $('#mobile').focus();
                                return false;
                                }
                            }

                if(agree < 1){
                alert("Please accept the Terms and Conditions to proceed")
                return false;
                }



                         $.ajax({
                                    url: "/spring-mongodb-tutorial/saveBlogger",
                                    type: "POST",
                                    data: "firstName=" + firstName+ "&lastName=" + lastName + "&emailId=" + emailId + "&userName=" + userName + "&password=" + password + "&mobile=" + mobile + "&showEmail=" + showEmail + "&showMobile=" + showMobile + "&showAddress=" + showAddress + "&address=" + address,
                                    //dataType: "json",
                                    //contentType: "application/json",
                                    success: function(response) {
                                        //alert(response)
                                        //alert(response);
                                        $('.span4').html("<font size='4'><b>" + response.status + "<b></font>");
                                        setTimeout(function(){
                                            self.close();
                                        },4000);

                                    },
                                    error: function(xhr) {
                                        //alert(xhr)
                                    }
                            });
          });


           $('#submitPasswordReset').click(function(){
             var passwordEmail =  $('#passwordEmail').val();
              $.ajax({
                   url: "/spring-mongodb-tutorial/forgotPassword",
                   type: "POST",
                   data: "passwordEmail=" + passwordEmail ,
                   //dataType: "json",
                   //contentType: "application/json",
                   success: function(response) {
                       alert(response.success);
                   },
                   error: function(xhr) {
                       //alert(xhr)
                   }
           });

           });

          $('#submitLogin').click(function(){
                          var userName =$('#userName').val();
                          var password =$('#password').val();
                                   $.ajax({
                                              url: "/spring-mongodb-tutorial/loginBlogger",
                                              type: "POST",
                                              data: "userName=" + userName + "&password=" + password ,
                                              //dataType: "json",
                                              //contentType: "application/json",
                                              success: function(response) {
                                                  //alert(response)
                                                  if(response.bloggerList[0]){
                                                  var idValTemp = response.bloggerList[0].id;
                                                  var userNameTemp = response.bloggerList[0].userName;
                                                  $.cookie('devilBricks', idValTemp +'!'+ userNameTemp +'!loggedIn', { expires: 90, path: '/', domain: 'localhost'});
                                                  $('#userNameVal').text($.cookie('devilBricks').split("!")[1])
                                                  $('#loginModelClose').click();
                                                  $('#logout').show();
                                                  $('.divider').show();
                                                  $( "div[data-target='#accounts-menu']").hide();
                                                  $( "#accounts-menu").hide();
                                                  alert("User Logged in successfully. Happy Blogging.")
                                                  window.location.reload(true);
                                                   }else{
                                                   if($("#wrongPass").length == 0) {
                                                   $(".remember-me").before("<div id='wrongPass'><font color='red' size='3'>User Id or password incorrect</font></div>");
                                                   }
                                                   $("#wrongPass").html("<font color='red' size='3'>User Id or password incorrect</font>");
                                                   }
                                              },
                                              error: function(xhr) {
                                                  //alert(xhr)
                                              }
                                      });
                    });





          //set username for cookie
          if($.cookie('devilBricks')){
              $('#userNameVal').text($.cookie('devilBricks').split("!")[1])
              $( "div[data-target='#accounts-menu']").hide();
              $( "#accounts-menu").hide();
          }

         //disable logout for anonymous
         if(!($.cookie('devilBricks'))){
         $('#logout').hide();
         $('.divider').hide();
         }

          //enable logout for anonymous
                  if($.cookie('devilBricks'))  {
                  $('#logout').show();
                  $('.divider').show();
                  }


          //logout function
           $("#logout").click(function(){
                      $.removeCookie('devilBricks', { path: '/' })
                      $('#userNameVal').text("anonymous");
                      $('#logout').hide();
                      $('.divider').hide();
                      $( "div[data-target='#accounts-menu']").show();
                     $( "#accounts-menu").show();
                      alert("User Sucessfully logged out. Happy Blogging");
                      window.location.reload(true);
           });

            //fetch the rating of owner
           $.each( $('#rating'), function(){
             //retrive unique id from this voting_wrapper element
             var unique_id = $('#ownerIdForReview').val();
             //alert("unique_id:::" + unique_id);
             if($.cookie('devilBricks'))
             var userId = $.cookie('devilBricks').split("!")[0];
             //prepare post content
             post_data = {'id':unique_id,'userId':userId};

             //send our data to "vote_process.php" using jQuery $.post()
             $.post('/spring-mongodb-tutorial/searchRatingForId', post_data,  function(response) {

                    if(response.exists == 'true'){
                        $('#ratingByUser').raty('score', response.value);
                        $('#ratingByUser').raty('readOnly', true);
                        $('#ratingByUser').attr('readOnly', 'readOnly');
                        $('#ratingMessage').text("Your Rating of "+response.value+" Saved Successfully. Happy Blogging.");
                    }
                     //retrive votes from server, replace each vote count text  //finalRating
                     $('#rating').raty( {half: true});
                     $('#rating').raty('score', response.finalRating);
                     $('#rating').raty('readOnly', true);
                     $('#totalUsers').text('RATED USERS : ' + response.totalUsers);
                 },'json');
         });

//disable reply if no user logged in
            $('.ratingClass').click(function(){
               if(!($.cookie('devilBricks'))) {
                  $('.ratingClass').attr('href', '#ratingModal');
                  alert("Please login to rate this Owner. Happy Blogging")
                  return false;
              }
            });

//disable reply if no user logged in
            $('#createOwnerButton').click(function(){
               if(!($.cookie('devilBricks'))) {
                  alert("Please login to review this Owner. Happy Blogging")
                  return false;
              }
              if($.trim($('#firstName').val()) == ''){
                  alert("FirstName is mandatory");
                  $('#firstName').focus();
                  return false;
              }
              if($.trim($('#pinCode').val()) == ''){
                  alert("PinCode is mandatory");
                  $('#pinCode').focus();
                  return false;
              }
              if($.trim($('#plotNumber').val()) == ''){
                alert("plot Number is mandatory");
                $('#plotNumber').focus();
                return false;
            }

            if($.trim($('#pinCode').val()).length < 6){
                alert("Please enter a valid PinCode");
                $('#pinCode').focus();
                return false;
            }

            if(!$.trim($("#email").val()) == ''){
            var regex = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
                testValue = regex.test($("#email").val());
                if(!testValue && !$.trim($("#email").val()) == ''){
                alert("E mail should adhere to proper format");
                $('#email').focus();
                return false;
                }
            }

          if(!$.trim($("#mobile").val()) == ''){
            if($("#mobile").val().length < 10 && !$.trim($("#mobile").val()) == '') {
                alert("Please enter 10 digit mobile number");
                $('#mobile').focus();
                return false;
                }
            }

            });

});


        //block resize function
        function resizeBlockFunction(idVal){
        var tempId = '#' + idVal;
            if($(tempId).css("height") == "250px" && $(tempId).css("overflow") == "hidden") {
                   $(tempId).css("height","100%");
                   $(tempId).css("overflow","auto");
                   $('#' + 'learnMoreButton_' + tempId.split("_")[1]).text("<< Show less ");

            } else{
                 $(tempId).css("height","250px");
                 $(tempId).css("overflow","hidden");
                 $('#' + 'learnMoreButton_' + tempId.split("_")[1]).text("Show more ");
            }
        }




        //area to push reply
        function replyBox(idVal,mainId,userDispName){

            //alert(idVal);
            //alert(mainId);
            $('#hiddenVal').val(idVal);
            $('#hiddenMainIdVal').val(mainId);
            $('#replyText').val('');
            $('#userDispName').text(userDispName);

        }

        //area to push reply
        function reportBox(hiddenReportIdVal,hiddenReportType){

            //alert(idVal);
            //alert(mainId);
            $('#hiddenReportIdVal').val(hiddenReportIdVal);
            $('#hiddenReportType').val(hiddenReportType);
            $('.reportClass').removeClass('active');
            $('#reportText').val('');

        }

        function formReplyHtml(replyList,mainId,mainDisplayName){

       /* var mainReplyList = [];
        mainReplyList.push.apply(mainReplyList, replyList);
        var tempReplyList = [];
        var tempMainId = '';
        var mainIdSearch = true;
        //var replyLength =  replyList.length;

        //start of reply sort
        loop1: for(var i=0;i<mainReplyList.length;i++){
        //alert("i:" + i)
          loop2: for(var j=0;j<replyList.length;j++){
          //alert("list" + replyList.length)
          //alert("j" + j)
                if(replyList[j].parentId == mainId && mainIdSearch) {
                //alert("came inside mainid:" + replyList[j].comments)
                   tempReplyList.push(replyList[j]);
                   tempMainId = replyList[j].id;
                   mainIdSearch = false;
                   if (typeof replyList[j+1] == 'undefined')
                   mainIdSearch = true;
                   replyList.splice(j, 1);
                   continue loop1;
                }

                if(replyList[j].parentId == tempMainId && !mainIdSearch) {
                //alert("came inside childid:" + replyList[j].comments)
                   tempReplyList.push(replyList[j]);
                   tempMainId = replyList[j].id;
                   if (typeof replyList[j+1] == 'undefined')
                   mainIdSearch = true;
                   replyList.splice(j, 1);
                   continue loop1;
                }

                   if (typeof replyList[j+1] == 'undefined')
                  mainIdSearch = true;

          }
        }
        replyList = tempReplyList;*/
        //stop of reply sort


        //alert(mainId);
        if (!replyList)
            return "";
        var htmlReplyString = "";
        displayNameVariable = "NA";
             for(var i=0;i<replyList.length;i++){
             if(replyList[i].parentId == mainId){
             var spanType = 'span11'
             var marginType = 8.5;
             displayNameVariable =  mainDisplayName;
             }
             else{
             var spanType = 'span10'
             var marginType = 17.5;
             displayNameVariable = replyList[i].replyToName ;
             }
                  htmlReplyString = htmlReplyString +
                  "<div class='block  "+spanType+"' id='span11_"+replyList[i].id+"' style='margin-left:"+marginType+"%'>  "  +
                  "<p class='block-heading-reply'><u>"+replyList[i].displayName+"</u> &nbsp;&nbsp;&nbsp;  "+
                  "<a data-toggle='modal' href='#myModal'><button class='btn btn-primary btn-mini' id='contactUser_span11_"+replyList[i].id+"'> "+
                  "<i class='icon-user'></i>&nbsp;&nbsp;Contact User</button></a>&nbsp;&nbsp;"+
                  "<span class='badge badge-success "+replyList[i].displayName+"' style='display:none'>You have contacted this user</span>"+
                  "<span style='float:right;font-weight: normal;font-size:90%'>"+new Date(replyList[i].creationDate)+"</span>"  +
                  "<span style='font-weight: normal;font-size:90%'> REPLY TO : <B>"+displayNameVariable+"</B></span>"  +
                  "</p> "+
                    "<div><input type='hidden' id='span_"+replyList[i].id+"' value='"+mainId+"'></div>"  +
                   "<div class='voting_wrapper'> "+
                  "    <div class='voting_btn'>"+
                   "       <div class='up_button'>&nbsp;</div><span class='up_votes'>0</span>"+
                    "  </div>"+
                     " <div class='voting_btn'>"+
                      "    <div class='down_button'>&nbsp;</div><span class='down_votes'>0</span>"+
                      "</div>"+
                  "</div>"+

                  "<div class='block-body' id='innerHtmlString_"+replyList[i].id+"'> "+

                    "<h6>User Comments</h6> "+
                    "<p>"+replyList[i].comments+"</p>"+

                    "</div><p class='block-heading'><a class='anchorClass' data-toggle='modal' href='#replyModal'> "+
                    "<button class='btn btn-primary btn-mini' onclick='replyBox(\""+replyList[i].id+"\",\""+mainId+"\",\""+replyList[i].displayName+"\")'> "+
                    "<i class='icon-share-alt'></i>&nbsp;&nbsp;Reply</button></a> "+
                    "<a href='#reportModal' data-toggle='modal' class='anchorReportClass'>" +
                      "<button class='btn btn-primary btn-mini' onclick='reportBox(\""+replyList[i].id+"\",\"reply\")'>" +
                      "<i class='icon-eye-open'></i>&nbsp;&nbsp;Report</button></a>"   +
                    "</p>"+
                    "</div>"
             }

             return htmlReplyString;
        }



function callVotingFunction(){

//activate the contact user function
$( "button[id^='contactUser_span']" ).click(function(){

    if(!($.cookie('devilBricks'))) {
          alert("Please login to see Blogger details. Happy Blogging")
          return false;
      }
  var unique_id = $(this).closest("div").attr("id");
  //get the rating for the existing
  post_data = {'id':unique_id};
  $.post('/spring-mongodb-tutorial/searchUserForId', post_data,  function(response) {

       $('#bloggerName').text(response.blogger.firstName + " " + response.blogger.lastName);
       if(response.blogger.showMobile == 'Y')
       $('#bloggerMobile').text(response.blogger.mobile);
       else
       $('#bloggerMobile').text('user Not willing to show this data');
         if(response.blogger.showEmail == 'Y')
       $('#bloggerEmail').text(response.blogger.email);
        else
              $('#bloggerEmail').text('user Not willing to show this data');
        if(response.blogger.showAddress == 'Y')
       $('#bloggerAddress').text(response.blogger.address);
        else
          $('#bloggerAddress').text('user Not willing to show this data');

        $('.' + response.blogger.userName).removeAttr('style');

      },'json');
});

//disable reply if no user logged in
            $('.anchorClass').click(function(){
               if(!($.cookie('devilBricks'))) {
                  $('.anchorClass').attr('href', '#replyModal');
                  alert("Please login to post Your Comments. Happy Blogging")
                  return false;
              }else{
                 $('#anchorClass').removeAttr('href');
              }
            });

//disable reply if no user logged in
            $('.anchorReportClass').click(function(){
               if(!($.cookie('devilBricks'))) {
                  alert("Please login to Report. Happy Blogging")
                  return false;
              }
            });



 //####### on page load, retrive votes for each content
          //http://www.sanwebe.com/2013/04/voting-system-with-jquery-php
          $.each( $('.voting_wrapper'), function(){

              //retrive unique id from this voting_wrapper element
              var unique_id = $(this).parent().attr("id");
              if($.cookie('devilBricks'))
              var userId = $.cookie('devilBricks').split("!")[0];

              //alert("unique_id:::" + unique_id);
              var parentId =  $('#span_'+unique_id.split("_")[1]).val();
              //alert("parentId::" + parentId);
              //prepare post content
              post_data = {'id':unique_id, 'vote':'fetch','parentId':parentId,'userId':userId};

              //send our data to "vote_process.php" using jQuery $.post()
              $.post('/spring-mongodb-tutorial/searchVoteForId', post_data,  function(response) {
                       //disable already done by users
                       //alert(response.exists+":"+response.vote_up+":"+response.vote_down+":"+unique_id);
                       if(response.exists == 'true'){
                       $('#'+unique_id+' .voting_btn').children().addClass("voting_btn_noClick");
                        }
                      //retrive votes from server, replace each vote count text
                      $('#'+unique_id+' .up_votes').text((response.vote_up != null) ? response.vote_up : 0);
                      $('#'+unique_id+' .down_votes').text((response.vote_down != null) ? response.vote_down : 0);
                  },'json');
          });

$(".voting_wrapper .voting_btn").click(function (e) {

               //see if user is logged in
               if(!($.cookie('devilBricks'))) {
                    alert("Please login to vote. Happy Blogging")
                   return false;
               }

                if($(this).children().hasClass("voting_btn_noClick")) {
                    alert("You have already voted. Happy Blogging")
                   return false;
               }

              //get class name (down_button / up_button) of clicked element
              var clicked_button = $(this).children().attr('class');

              //get unique ID from voted parent element
              var unique_id   = $(this).parent().parent().attr("id");

              //alert(unique_id);
              var parentId =  $('#span_'+unique_id.split("_")[1]).val();
              //alert("parentId::" + parentId);

              var userId = $.cookie('devilBricks').split("!")[0];

              if(clicked_button==='down_button') //user disliked the content
              {
                  //prepare post content
                  post_data = {'id':unique_id, 'vote':'down','parentId':parentId,'userId':userId};

                  //send our data to "vote_process.php" using jQuery $.post()
                  $.post('/spring-mongodb-tutorial/changeVoteForId', post_data, function(data) {

                      //replace vote down count text with new values
                      $('#'+unique_id+' .down_votes').text(data.vote_down);

                        //to disable clicks
                         $('#'+unique_id+' .voting_btn').children().addClass("voting_btn_noClick");

                      //thank user for the dislike
                      alert("Thanks! Each Vote Counts, Even Dislikes!");

                  }).fail(function(err) {

                  //alert user about the HTTP server error
                  alert(err.statusText);
                  });
              }
              else if(clicked_button==='up_button') //user liked the content
              {
                  //prepare post content
                  post_data = {'id':unique_id, 'vote':'up','parentId':parentId,'userId':userId};

                  //send our data to "vote_process.php" using jQuery $.post()
                  $.post('/spring-mongodb-tutorial/changeVoteForId', post_data, function(data) {

                      //replace vote up count text with new values
                      $('#'+unique_id+' .up_votes').text(data.vote_up);

                        //to disable clicks
                         $('#'+unique_id+' .voting_btn').children().addClass("voting_btn_noClick");

                      //thank user for liking the content
                      alert("Thanks! For Liking This Content.");
                  }).fail(function(err) {

                  //alert user about the HTTP server error
                  alert(err.statusText);
                  });
              }

          });
          //end
}