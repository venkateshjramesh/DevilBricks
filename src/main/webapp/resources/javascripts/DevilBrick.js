

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






    $("#createOwnerButton").click(function(){
    //    alert("The page was clicked.");
    //    return false;
    });


});
