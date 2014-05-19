$(document).ready(function () {

  // PSEUDO-CODE:
  //   1- intercept the form submission event using jQuery
  //   2- prevent the default action for that event from happening
  //   3- generate a random number between 1 and 6 using JavaScript
  //   4- use jQuery to submit an AJAX post to the form's action
  //   5- when the AJAX post is done, replace the contents of the "#die" DIV in the DOM using jQuery

  // Step 1 - Bind to the form submission
  $('form').submit(function(event){
    // Step 2 - Tell the browser to chill
    event.preventDefault();

    // Skipping Step 3 since the form will have the data

    // Step 4 - Ajax
    var url = $(this).attr('action');
    var data = $(this).serialize() // I can just use this method now to generate the data

    $.post(url, data, function(response){
      // Step 5 - replace contents of div#die
      $('#die').html(response);
    });
  });

});
