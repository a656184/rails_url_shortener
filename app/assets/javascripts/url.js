$(document).ready(function(){
  $('#new_url').on('ajax:success', function(e, data, status, xhr){
    console.log(data);
    $('#short_url').append('<a href=' + data.url_id +'>' + data.url_id + '</a>');
    // $('#short_url').append(data.partial)
  });
});

