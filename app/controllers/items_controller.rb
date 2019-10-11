class ItemsController < ApplicationController
  def index
    @items = Item.order("id DESC").limit(10)
  end
  
  def new
  end

  def show
  end
end

