//preserve formatting
$('#do_it').click(function() {
  $('#results').html($('textarea').val().replace(/\n/g, '<br>'));
});

//truncate result if <br>
$('#preview').click(function() {
 var thesplit = $('#results').html().split('<br>');
 $('#results').empty().html(thesplit[0] + ' ... ');
});