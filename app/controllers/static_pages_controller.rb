class StaticPagesController < ApplicationController

  def home
    @items = Item.order('id DESC').take(3);
  end

  def about
  end

end
