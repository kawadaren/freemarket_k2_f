class ItemsController < ApplicationController
  def index
    @item = Item.find(2)
  end
  
  def new
  end

  def show
  end
end

