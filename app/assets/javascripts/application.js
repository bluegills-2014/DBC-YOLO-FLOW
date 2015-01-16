
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

$(document).ready(function(){
  $('.up, .down').on('click', function(e){
    e.preventDefault();
    var article = $(this).parent();
    console.log(article)
    var request = $.ajax({
      url: this.href,
      method: 'get',
      dataType: 'json'
    })

    request.done(function(response){
      $('.vote_count', article).html(response.vote_count);
      // $('.vote-button', article).addClass('voting');
      // setTimeout(function(){
        // $('.vote-button', article).removeClass('voting');
      // }, 500);
    });
  });

  var answerForm = $("#answer_form").hide();
   $("#answer_question_button").on('click', function(e) {
     e.preventDefault();

     $(this).hide();
     answerForm.show();
  })

})


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






// voting button logic

  // $('.post-container').on('click', '.vote-button', function(e){
  //   e.preventDefault();
  //   var article = $(this).parent();
  //   var request = $.ajax({
  //     url: this.href,
  //     method: 'get',
  //     dataType: 'json'
  //   })

  //   request.done(function(response){
  //     $('.points', article).text(response.vote_count);
  //     $('.vote-button', article).addClass('voting');
  //     setTimeout(function(){
  //       $('.vote-button', article).removeClass('voting');
  //     }, 500);
  //   });
  // });

