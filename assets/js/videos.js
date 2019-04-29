/*
$(document).ready(function(){

    var addVideoFrom = $("#addNewVideo");

    var validator = addVideoFrom.validate({

        rules:{
            name :{ required : true },

                poster_image: { //Strat
                    required : true,
                    fileType: {
                        types: ["png"]
                        types: ["jpg"]
                    },
                    minFileSize: {
                        "unit": "KB",
                        "size": "200"
                    },
                    maxFileSize: {
                        "unit": "KB",
                        "size": "800"
                    }

                }//End
                ,
            directed_by : {required : true}
        },
        messages:{
            name :{ required : "This field is required" },
            poster_image : { required : "This field is required" },
            directed_by : { required : "This field is required" }
        },
        submitHandler: function(form) {
            var pass = true;
            if(pass == false){
                return false;
            }
            $(".loading").show();
            return true;
        }
    });
});


$(document).ready(function(){

    var editVideoFrom = $("#editVideo");

    var validator = editVideoFrom.validate({

        rules:{
            name :{ required : true },

                poster_image: { //Start
                    //required : true,
                    fileType: {
                        types: ["png"]
                    },
                    minFileSize: {
                        "unit": "KB",
                        "size": "100"
                    },
                    maxFileSize: {
                        "unit": "KB",
                        "size": "800"
                    }

                }//End
                
           
        }
     
        
    });
});


*/

jQuery(document).ready(function(){

    jQuery(document).on("click", ".deleteVideo", function(){
        var videoId = $(this).data("id"),
            hitURL = baseURL + "deleteVideo",
            currentRow = $(this);

        var confirmation = confirm("Are you sure you want to delete this video?");

        if(confirmation)
        {
            jQuery.ajax({
                type : "POST",
                dataType : "json",
                url : hitURL,
                data : { videoId : videoId }
            }).done(function(data){
                console.log(data);
                currentRow.parents('li').remove();
                if(data.status = true) { alert("Video successfully deleted"); }
                else if(data.status = false) { alert("Video deletion failed"); }
                else { alert("Access denied..!"); }
            });
        }
    });


    jQuery(document).on("click", ".searchList", function(){

    });

});
