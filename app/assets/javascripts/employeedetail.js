jQuery(document).ready(function() {
    jQuery("#formemployee").submit(function() {
        event.preventDefault();
        debugger;
        var valuesToSubmit = $(this).serialize();
        jQuery.ajax({
                    type: $(this).attr('method'),
                    url: $(this).attr('action'),
                    data: valuesToSubmit,
                    dataType: "JSON",
                    success: function(data, status, xhr) {
                        jQuery("#showform").html(data.html);
                    },
                    error: function(data, status, xhr) {}
                })
                    return false;
                });
       
});
  