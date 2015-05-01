

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
    {"key":"suggestion","value":"Any Other Suggestion"},
    {"key":"replies","value":""}];
         $.ajax({
                    url: "/spring-mongodb-tutorial/searchReviewForId?id=5543130e44aefab21e59fc84",
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
                             innerHtmlString = innerHtmlString + "<h5>"+keyValue[j].value+"</h5><p>"+temp[keyValue[j].key]+"</p>";

                             if(keyValue[j].key == "replies"){
                              var replyHtml = formReplyHtml(temp[keyValue[j].key],temp["id"]);
                             }
                         }

                        htmlString = htmlString +
                         "<div class='row-fluid'>"+
                             "<div id='span12_"+temp.id+"' class='block span12' >"  +
                                 "<p class='block-heading'><u>Venkatesh Ramesh</u> &nbsp;&nbsp;&nbsp;"  +
                         		"<a href='#myModal' data-toggle='modal'><button class='btn btn-primary '><i class='icon-user'></i>&nbsp;&nbsp;Contact User</button></a>"+
                         		"&nbsp;&nbsp;<span class='badge badge-success'>You have contacted this user</span>" +
                         		"</p>"+
                                 "<div id='innerHtmlString_"+temp.id+"' class='block-body' style='height:250px;overflow:hidden;'>"  +
                                      innerHtmlString +
                                      "</div>"+
                                     "<a id='learnMoreButton_"+temp.id+"' class='learnMoreButtonClass btn btn-primary btn-small' onclick='resizeBlockFunction(\"innerHtmlString_"+temp.id+"\")'>Show more &raquo;</a>"+
                             "<p class='block-heading'><a href='#replyModal' data-toggle='modal'>"  +
                              "<button onclick='replyBox(\""+temp.id+"\",\""+temp.id+"\")' class='btn btn-primary '><i class='icon-user'></i>&nbsp;&nbsp;Reply</button></a>"  +
                              "</p>"   +
                             "</div>"  + replyHtml +
                         "</div> "

                        } //end of for loop
                       $('#reviewBlock').html(htmlString);

                    },
                    error: function(xhr) {
                        //alert(xhr)
                    }
            });
     });


     $('#submitReply').click(function(){
           var idValue = $('#hiddenVal').val();
           var idMainValue = $('#hiddenMainIdVal').val();
           var displayName = $('#displayName').val();
           var replyText =$('#replyText').val();
           alert(displayName +":::" + idValue);
                    $.ajax({
                               url: "/spring-mongodb-tutorial/saveReply",
                               type: "POST",
                               data: "id=" + idValue+ "&displayName=" + displayName + "&replyText=" + replyText + "&idMainValue=" + idMainValue ,
                               //dataType: "json",
                               //contentType: "application/json",
                               success: function(response) {
                                   //alert(response)
                                   alert(response);


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
                   $('#' + 'learnMoreButton_' + tempId.split("_")[1]).text("<< Show less ");

            } else{
                 $(tempId).css("height","250px");
                 $(tempId).css("overflow","hidden");
                 $('#' + 'learnMoreButton_' + tempId.split("_")[1]).text("Show more ");
            }
        }

        //area to push reply
        function replyBox(idVal,mainId){
            alert(idVal);
            alert(mainId);
            $('#hiddenVal').val(idVal);
            $('#hiddenMainIdVal').val(mainId);

        }

        function formReplyHtml(replyList,mainId){
        alert(mainId);
        if (!replyList)
            return "";
        var htmlReplyString = "";

            //var sortArray = dataArr['hello'];
            replyList.sort(function(a,b) {
                 if ( a.creationDate < b.creationDate )
                        return -1;
                    if ( a.creationDate > b.creationDate )
                        return 1;
                    return 0;
            } );


           /* var tempArray = [];
            loop1:for(var j=0;j<replyList.length;j++){
                var tempId = replyList[j].id;
               for(var k=0;k<replyList.length;k++){
                    var tempParentId = replyList[k].parentId;
                    if($.trim(tempId) == $.trim(tempParentId)){
                         tempArray.push(replyList[k]);
                         replyList[k] = "";
                          continue loop1;
                    }else if($.trim(tempId) != $.trim(tempParentId) && (k + 1 == replyList.length)) {
                          tempArray.push(replyList[k]);
                          replyList[k] = "";
                          continue loop1;
                    }

                }
            }
replyList = tempArray;*/

             for(var i=0;i<replyList.length;i++){
                  htmlReplyString = htmlReplyString +
                  "<div class='block  span11' id='span12_"+replyList[i].id+"' style='margin-left:8.5%'>  "  +
                  "<p class='block-heading-reply'><u>Venkatesh Ramesh</u> &nbsp;&nbsp;&nbsp;  "+
                  "<a data-toggle='modal' href='#myModal'><button class='btn btn-primary '> "+
                  "<i class='icon-user'></i>&nbsp;&nbsp;Contact User</button></a>&nbsp;&nbsp;"+
                  "<span class='badge badge-success'>You have contacted this user</span></p> "+
                  "<div class='block-body' id='innerHtmlString_"+replyList[i].id+"'> "+

                    "<h6>User Comments</h6> "+
                    "<p>"+replyList[i].comments+"</p>"+

                    "</div><p class='block-heading'><a data-toggle='modal' href='#replyModal'> "+
                    "<button class='btn btn-primary ' onclick='replyBox(\""+replyList[i].id+"\",\""+mainId+"\")'> "+
                    "<i class='icon-user'></i>&nbsp;&nbsp;Reply</button></a></p>"+
                    "</div>"
             }

             return htmlReplyString;
        }