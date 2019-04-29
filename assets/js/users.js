/**
 * File : addUser.js
 *
 * This file contain the validation of add user form
 *
 * Using validation plugin : jquery.validate.js
 *
 * @author Kishor Mali
 */

$(document).ready(function(){

    var addUserForm = $("#addUser");

    var validator = addUserForm.validate({

        rules:{
            fname :{ required : true },
            email : { required : true, email : true, remote : { url : baseURL + "checkEmailExists", type :"post"} },
            password : { required : true },
            cpassword : {required : true, equalTo: "#password"},
            mobile : { required : true, digits : true },
            role : { required : true, selected : true}
        },
        messages:{
            fname :{ required : "This field is required" },
            email : { required : "This field is required", email : "Please enter valid email address", remote : "Email already taken" },
            password : { required : "This field is required" },
            cpassword : {required : "This field is required", equalTo: "Please enter same password" },
            mobile : { required : "This field is required", digits : "Please enter numbers only" },
            role : { required : "This field is required", selected : "Please select atleast one option" }
        }
    });
});


/**
 * File : editUser.js
 *
 * This file contain the validation of edit user form
 *
 * @author Kishor Mali
 */
$(document).ready(function(){

    var editUserForm = $("#editUser");

    var validator = editUserForm.validate({

        rules:{
            fname :{ required : true },
            email : { required : true, email : true, remote : { url : baseURL + "checkEmailExists", type :"post", data : { userId : function(){ return $("#userId").val(); } } } },
            cpassword : {equalTo: "#password"},
            mobile : { required : true, digits : true },
            role : { required : true, selected : true}
        },
        messages:{
            fname :{ required : "This field is required" },
            email : { required : "This field is required", email : "Please enter valid email address", remote : "Email already taken" },
            cpassword : {equalTo: "Please enter same password" },
            mobile : { required : "This field is required", digits : "Please enter numbers only" },
            role : { required : "This field is required", selected : "Please select atleast one option" }
        }
    });
});


/**
 * @author Kishor Mali
 */


jQuery(document).ready(function(){

    jQuery(document).on("click", ".deleteUser", function(){
        var userId = $(this).data("userid"),
            hitURL = baseURL + "deleteUser",
            currentRow = $(this);

        var confirmation = confirm("Are you sure you want to delete this user ?");

        if(confirmation)
        {
            jQuery.ajax({
                type : "POST",
                dataType : "json",
                url : hitURL,
                data : { userId : userId }
            }).done(function(data){
                console.log(data);
                currentRow.parents('tr').remove();
                if(data.status = true) { alert("User successfully deleted"); }
                else if(data.status = false) { alert("User deletion failed"); }
                else { alert("Access denied..!"); }
            });
        }
    });


    jQuery(document).on("click", ".searchList", function(){

    });

});
