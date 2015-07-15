$(function() {
    $('#todo_form').submit(function(e) {
      e.preventDefault();


      $.ajax({
        url: $(this).attr('action'),
        dataType: "json",
        type:'POST',
        data:$(this).serialize()
      }).then(function(data, err) {
        console.log(data);
      });

    });
});
