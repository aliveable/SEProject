
$(document).ready(function () {
    
    
    $("#submit").click(function () {
        var first_name = $("#first_name").val().trim();
        var last_name = $("#last_name").val().trim();
        var phone = $("#phone").val().trim();
        var email = $("#email").val().trim();
        var address = $("#address").val().trim();
        var district = $("#district1").val().trim();
        var sub_district = $("#sub_district").val().trim();
        var province = $("#province").val().trim();
        var postal_code = $("#postal_code").val().trim();
        var username = $("#username").val().trim();
        var password = $("#password").val().trim();
        var password_confirmation = $("#password_confirmation").val().trim();
        $("#submit").prop("type", "button");
        console.log("inside click");
        if (first_name.length == 0) {

            console.log("inside if");
            var element = document.getElementById("textalert");
            element.innerHTML = "Please enter your name.";
            $("#myModal").modal("show");

        } else if (last_name.length == 0) {

            console.log("inside if");
            var element = document.getElementById("textalert");
            element.innerHTML = "Please enter your last name";
            $("#myModal").modal("show");

        } else if (phone.length == 0) {

            console.log("inside if");
            var element = document.getElementById("textalert");
            element.innerHTML = "Please enter your phone number";
            $("#myModal").modal("show");

        } else if (email.length == 0) {

            console.log("inside if");
            var element = document.getElementById("textalert");
            element.innerHTML = "enter your E-Mail";
            $("#myModal").modal("show");

        } else if (address.length == 0) {

            console.log("inside if");
            var element = document.getElementById("textalert");
            element.innerHTML = "enter your Address";
            $("#myModal").modal("show");

        } else if (district.length == 0) {

            console.log("inside if");
            var element = document.getElementById("textalert");
            element.innerHTML = "enter your District";
            $("#myModal").modal("show");

        } else if (sub_district.length == 0) {

            console.log("inside if");
            var element = document.getElementById("textalert");
            element.innerHTML = "Please choose your sub district";
            $("#myModal").modal("show");

        } else if (province.length == 0) {

            console.log("inside if");
            var element = document.getElementById("textalert");
            element.innerHTML = "Please choose your province";
            $("#myModal").modal("show");
        } else if (postal_code.length == 0) {

            console.log("inside if");
            var element = document.getElementById("textalert");
            element.innerHTML = "enter your postal code";
            $("#myModal").modal("show");

        } else if (username.length == 0) {

            console.log("inside if");
            var element = document.getElementById("textalert");
            element.innerHTML = "enter your Username";
            $("#myModal").modal("show");

        } else if (password.length == 0) {

            console.log("inside if");
            var element = document.getElementById("textalert");
            element.innerHTML = "enter your Password";
            $("#myModal").modal("show");

        } else if (password_confirmation.length == 0) {

            console.log("inside if");
            var element = document.getElementById("textalert");
            element.innerHTML = "enter your password confirmation";
            $("#myModal").modal("show");

        } else if (password != password_confirmation) {

            console.log("inside if");
            var element = document.getElementById("textalert");
            element.innerHTML = "Password does not match";
            $("#myModal").modal("show");

        } else {
           $("#submit").prop("type", "submit");
        }
    });
    
    $('#username').blur(function() {
        $.ajax({
            url: 'UsernameCheckServlet',
            data: {
                username : $('#username').val()
            },
            success: function(response) {
                if(response !== "") {
                    $('#user_error').html(response);
                    $('#submit').prop('disabled', true);
                }else {
                    $('#user_error').empty();
                    $('#submit').prop('disabled', false);
                }
            }
        });
    });
    
    $('#submit').prop('disabled', true);

});
