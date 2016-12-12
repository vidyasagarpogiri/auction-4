# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class BidChannel < ApplicationCable::Channel
  def subscribed
    stream_from "bids"
  end
end
