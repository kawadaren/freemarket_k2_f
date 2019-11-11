class ItemsController < ApplicationController
  before_action :item_status, only: [:item_status]
  def index
    @items = Item.order("id DESC").limit(10)
    @images = Image.group(:item_id).order("item_id DESC").limit(10)
  end
 
  def new
    @item = Item.new
    @image = @item.images.build
  end
  def cretate
    item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      params[:images]['image'].each do |a|
        @image = @item.images.create(image: a)
      end
      @item.selling! unless @item.selling?
      redirect_to root_path 
    else
      render :new
    end
  end 

  def show
    @item = Item.find(params[:id])
   
  end

private
  def item_params
    params.require(:item).permit(:name, :explanation, :price, :category_id, :state_id, :shipping_charge_id, :region_id, :shipping_data_id, images_attributes: [:image])
  end

end

 