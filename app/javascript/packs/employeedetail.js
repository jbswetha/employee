$(document).ready(function() {
    $("#formemployee").submit(function() {
        event.preventDefault();
        debugger;
        var valuesToSubmit = $(this).serialize();
        $.ajax({
                    type: $(this).attr('method'),
                    url: $(this).attr('action'),
                    data: valuesToSubmit,
                    dataType: "JSON",
                    success: function(data, status, xhr) {
                        $("#showform").html(data.json);
                    },
                    error: function(data, status, xhr) {}
                })
                    return false;
                });
       
});
  