class ItemsController < ApplicationController
  before_action :item_status, only: [:item_status]
  def index
    @items = Item.order("id DESC").limit(10)
  end
  #item_imageコントローラ作ったのでこの記述は消去し、直すこと(item_imageコントローラーに)
  # 一覧表示は後回しにするので↑一旦置いておく
  
  def new
    @item = Item.new
    @image = @item.images.build
  end

  def create
    
    @item = Item.new(item_params)
    if @item.save
      @item.selling! unless @item.selling?
      redirect_to controller: 'users', action: 'show', id: 1 #仮置きでidを１にしている
      
    else
      render :new
    end
    
  end 

  

  def show
  end
 
  
  
  
private
  def item_params
    params.require(:item).permit(:name, :explanation, :price, :category_id, :state_id, :shipping_charge_id, :region_id, :shipping_data_id, images_attributes: {image:[]})
  end

end

 