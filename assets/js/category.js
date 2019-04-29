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

    /*$( "#addNewCategory" ).validate({
        rules: {
            name: {
                required: true,
                name: true,
                remote: {
                    url: base_url + "cat-name-is-exist",
                    type: "post",
                    data: {
                        username: function() {
                            return $( "#username" ).val();
                        }
                    }
                }
            }
        }
    });*/

});


/**
 * File : editUser.js
 *
 * This file contain the validation of edit user form
 *
 * @author Kishor Mali
 */
$(document).ready(function(){

    var editUserForm = $("#addNewCategory");

    var validator = editUserForm.validate({

        rules:{
            name :{
                required : true
            }
        },
        messages:{
            name :{
                required : "Category name is required"
            }
        }
    });
});



/**
 * @author Kishor Mali
 */


jQuery(document).ready(function(){

    jQuery(document).on("click", ".deleteCategory", function(){
        var categoryId = $(this).data("userid"),
            hitURL = baseURL + "deleteCategory",
            currentRow = $(this);

        var confirmation = confirm("Are you sure you want to delete this category?");

        if(confirmation)
        {
            jQuery.ajax({
                type : "POST",
                dataType : "json",
                url : hitURL,
                data : { categoryId : categoryId }
            }).done(function(data){
                console.log(data);
                currentRow.parents('tr').remove();
                if(data.status = true) { alert("Category successfully deleted"); }
                else if(data.status = false) { alert("Category deletion failed"); }
                else { alert("Access denied..!"); }
            });
        }
    });

    jQuery(document).on("click", ".deleteSubCategory", function(){
        var subCategoryId = $(this).data("sub-cat"),
            hitURL = baseURL + "subCategory/deleteSubCategory",
            currentRow = $(this);

        var confirmation = confirm("Are you sure you want to delete this sub-category?");

        if(confirmation)
        {
            jQuery.ajax({
                type : "POST",
                dataType : "json",
                url : hitURL,
                data : { sub_CategoryId : subCategoryId }
            }).done(function(data){
                console.log(data);
                currentRow.parents('tr').remove();
                if(data.status = true) { alert("Sub-category successfully deleted"); }
                else if(data.status = false) { alert("Sub-category deletion failed"); }
                else { alert("Access denied..!"); }
            });
        }
    });
    jQuery(document).on("click", ".deleteShowcase", function(){
        var id = $(this).data("id"),
            hitURL = baseURL + "deleteShowcase",
            currentRow = $(this);

        var confirmation = confirm("Are you sure you want to delete this showcase?");

        if(confirmation)
        {
            jQuery.ajax({
                type : "POST",
                dataType : "json",
                url : hitURL,
                data : { id : id }
            }).done(function(data){
                console.log(data);
                currentRow.parents('tr').remove();
                if(data.status = true) { alert("Showcase successfully deleted"); }
                else if(data.status = false) { alert("Showcase deletion failed"); }
                else { alert("Access denied..!"); }
            });
        }
    });

    jQuery(document).on("click", ".searchList", function(){

    });

});



