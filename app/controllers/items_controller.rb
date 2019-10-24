class ItemsController < ApplicationController
  def index
    @items = Item.order("id DESC").limit(10)
  end
  #item_imageコントローラ作ったのでこの記述は消去し、直すこと(item_imageコントローラーに)
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
      if @item.save

        image_params[:images].each do |image|
        @item.image.build
        #buildする事でaccepts nested attributes for をしているところに値を保存できる
        item_image = @item.images.new(image: image)
        item_image.save
        end
        respond_to do |format|
          format.json
      end
    end
  end


  def show
  end

  
  private
  def item_params
    item_params = params.require(:item).permit(:name, :price)
    #仮置きなのであとで書き直し
    return item_params
  end

  def image_params
    params.require(:image).permit({:images => []})
  end
end

