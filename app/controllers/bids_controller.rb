class BidsController < ApplicationController
  before_action :authenticate_model!

  def create

      @item = Item.find(params[:bid][:item_id])
      @cur_bid
      if @item.bids.max.nil?
        @cur_bid = 0
      else
        @cur_bid = @item.bids.max[:price]
      end
      if  @cur_bid < params[:bid][:price].to_i
        bid = @item.bids.build()
        bid.price = params[:bid][:price]
        bid.model = current_model
        current_model.bids << bid
        @email = Model.find(bid.model_id).email
        if bid.save
          ActionCable.server.broadcast 'bids',
            bid: bid.price,
            user: current_model.name,
             head: :ok
        end
      else
        ActionCable.server.broadcast 'bids',
          error: "Bid is too low",
           head: :ok
    end

  end
end
