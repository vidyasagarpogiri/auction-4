class AuctionController < ApplicationController
  before_action :authenticate_model!

  def show
    @item = Item.find(params[:id])
    @bid = Bid.new
  end
end
