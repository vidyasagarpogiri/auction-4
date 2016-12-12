App.bids = App.cable.subscriptions.create('BidChannel', {
  received: function(data) {
    if(data.error){
      $("#errors").empty();
      $("#errors").prepend("Your bid must be higher than the previous bid");
    }else{
    $("#errors").empty();
    $("#bids").removeClass('hidden');
    $("#winner").empty().append(data.user);
    $("#winning-bid").empty().append("Winning Bid: $"+ data.bid + ".00");
    return $('#bids').prepend(this.renderMessage(data));
    }
  },
  renderMessage: function(data) {
    return "<p> <b>" + data.user + ": </b>$" + data.bid + ".00</p>";
  }
});
