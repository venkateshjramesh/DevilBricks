

$( document ).ready(function() {

//validations for write review
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

$("#mobile").bind("blur", function(){
    $('#mobileMsg').hide();
});

$("#mobile").bind("focus", function(){
    $('#mobileMsg').show() ;
});


$("#email").bind("blur", function(){
    var regex = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    testValue = regex.test($("#email").val());
    if(!testValue)
     $('#emailMsg').show() ;
     else
     $('#emailMsg').hide() ;
});




         //http://localhost:8080/spring-mongodb-tutorial/searchOwner?id=&firstName=kingsly&lastName=k&email=k&mobile=k

    $("#submitForm").click(function(){
        var htmlString = "";
        $.ajax({
            url: "/spring-mongodb-tutorial/searchOwner?id=&firstName=kingsly&lastName=k&email=k&mobile=k",
            type: "GET",
            dataType: "json",
            success: function(response) {
                //alert(response)
                for(var i=0;i<response.ownerList.length;i++) {
                var obj = response.ownerList[i];
                  htmlString = htmlString + "<tr><td>"+obj.id+"</td><td>"+obj.firstName+","+obj.lastName+"</td><td>"+
                  ""+obj.mobile+"</td><td>"+obj.plotNumber+"</td><td><a id="+obj.id+" href='/spring-mongodb-tutorial/writeReview/"+obj.id+"'><i class='icon-pencil'></i></a>" +
                  "<a id="+obj.id+" href='/spring-mongodb-tutorial/viewReview/"+obj.id+"'><i class='icon-zoom-in'></i></a></td></tr>";
                }

                $('#searchReviewTable').html(htmlString);
                 $('#ownerTable').DataTable();

            },
            error: function(xhr) {
                //alert(xhr)
            }
    });

});

    $('#testButton').click(function(){
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
    {"key":"suggestion","value":"Any Other Suggestion"}];
         $.ajax({
                    url: "/spring-mongodb-tutorial/searchReviewForId?id=552e730d694ca34cc8a97963",
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
                             innerHtmlString = innerHtmlString + "<h5>"+keyValue[j].value+"</h5><p>"+temp[keyValue[j].key]+"</p>"
                         }

                        htmlString = htmlString +
                         "<div class='row-fluid'>"+
                             "<div class='block span12' >"  +
                                 "<p class='block-heading'><u>Venkatesh Ramesh</u> &nbsp;&nbsp;&nbsp;"  +
                         		"<a href='#myModal' data-toggle='modal'><button class='btn btn-primary '><i class='icon-user'></i>&nbsp;&nbsp;Contact User</button></a>"+
                         		"&nbsp;&nbsp;<span class='badge badge-success'>You have contacted this user</span>" +
                         		"</p>"+
                                 "<div id='innerHtmlString_"+temp.id+"' class='block-body' style='height:250px;overflow:hidden;'>"  +
                                      innerHtmlString +
                                 "</div>"+
                                     "<a id='learnMoreButton_"+temp.id+"' class='learnMoreButtonClass btn btn-primary btn-small' onclick='resizeBlockFunction(\"innerHtmlString_"+temp.id+"\")'>Show more &raquo;</a>"+
                             "</div>"  +
                         "</div> "

                        } //end of for loop
                       $('#reviewBlock').html(htmlString);

                    },
                    error: function(xhr) {
                        //alert(xhr)
                    }
            });
     });







});


        //block resize function
        function resizeBlockFunction(idVal){
        var tempId = '#' + idVal;
            if($(tempId).css("height") == "250px" && $(tempId).css("overflow") == "hidden") {
                   $(tempId).css("height","100%");
                   $(tempId).css("overflow","auto");
                   //$('#' + 'learnMoreButton_' + tempId.split("_")[1]).text("Show less " + &laquo;);

            } else{
                 $(tempId).css("height","250px");
                 $(tempId).css("overflow","hidden");
                // $('#' + 'learnMoreButton_' + tempId.split("_")[1]).text("Show more " + &raquo;);
            }
        }