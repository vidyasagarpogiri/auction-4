$(document).on('turbolinks:load', function() {
  submitNewMessage();
  bidClick();
});

function submitNewMessage(){
  $('#bid_price').keydown(function(event) {
    if (event.keyCode == 13) {
        $('[data-send="bid"]').click();
        $('[data-textfield="bid"]').val(" ")
        return false;
     }
  });
}

// function bidClick(){
//   $('')
// }
