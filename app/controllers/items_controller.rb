class ItemsController < ApplicationController
  def index
    @items = Item.order("id DESC").limit(10)
  end
  #item_imageコントローラ作ったのでこの記述は消去し、直すこと(item_imageコントローラーに)
  
  def new
    @item = Item.new
    @image = @item.images.build
  end

  def create
   
    @item = Item.new(item_params)

    if @item.save
      params[:images]['image'].each do |a|
        @image = @item.images.create!(image: a)
      end
      redirect_to root_path, notice: '出品した'
     else
      render :new
     end
  end 

    #redirect_to root_path
    # if @item.save
      
    #   redirect_to root_path
    # else 
    #   render :show
    # end
      # if @item.save
        
      #   image_params[:images].each do |image|
      #   @item.image.build
      #   #buildする事でaccepts nested attributes for をしているところに値を保存できる
      #   item_image = @item.images.new(image: image)
      #   item_image.save
      #   end
      #   respond_to do |format|
      #     format.json
      #   end
      # end
  

  def show
  end
 
  
  
  
  
private
  def item_params
    params.require(:item).permit(:name, :explanation, :price, :category_id, :state_id, :shipping_charge_id, :region_id, :shipping_data_id, images_attributes: [:image])
    #params.require(:item).permit(:name, :explanation, :price, :category_id, :state_id, :shipping_charge_id, :region_id, :shipping_data_id, {image:[]})
    #仮置きなのであとで書き直し
    #return item_params
  end

  # def image_params
  #   params.require(:image).permit({:images => []})
  # end

  # def params_int(item_params)
  #   item_params.each do |key,value|
  #     if integer_string?(value)
  #       model_params[key]=value.to_i
  #     end
  #   end
  # end

end

 