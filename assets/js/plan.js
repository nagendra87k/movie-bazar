jQuery(document).ready(function(){

    jQuery(document).on("click", ".deletePlane", function(){
        var planId = $(this).data("userid"),
            hitURL = baseURL + "deletePlan",
            currentRow = $(this);

        var confirmation = confirm("Are you sure you want to delete this plan?");

        if(confirmation)
        {
            jQuery.ajax({
                type : "POST",
                dataType : "json",
                url : hitURL,
                data : { planId : planId }
            }).done(function(data){
                console.log(data);
                currentRow.parents('tr').remove();
                if(data.status = true) { alert("Plan deleted successfully"); }
                else if(data.status = false) { alert("plan deletion failed"); }
                else { alert("Access denied..!"); }
            });
        }
    });


    jQuery(document).on("click", ".searchList", function(){

    });

});