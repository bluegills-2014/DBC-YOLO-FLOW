// $(document).ready(function(){
//   $("#search_tags").submit(function(e) {
//     e.preventDefault();
//     var request = $.get("/tags/find", { q: $('#search_tags > input:first')[0].value },
//     function(data, status) {
//       debugger
//       $.each(data, function(ix, datum) {
//         $('.tag_search_results').append($('<li>').text(datum.name))
//       })
//     })

//   })
// })

// $(document).ready(function() {
//   $('#search_tags').submit(function(e) {
//     e.preventDefault();
//     var form = $(this);
//     var data = form.serialize();
//     var request = $.ajax({
//       url: '/tags/find',
//       method: 'get',
//       data: data
//     });

//     request.done(function(response){
//       $('.tag_search_results').append($('<li>').text(response.name))
//     })
//   })
// })

$(document).ready(function() {
    var answerForm = $("#answer_form").hide();
  $("#answer_question_button").on('click', function(e) {
     e.preventDefault();

     $(this).hide();
     answerForm.show();
  })
})
