class ItemsController < ApplicationController
  def index
    @items = Item.order("id DESC").limit(10)
  end
  
  def new
  end
  def cretate
    item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end
end

