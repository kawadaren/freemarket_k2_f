class ImagesController < ApplicationController
  def index 
    @images = Image.order("id DESC").limit(10)
  end
  #一覧表示は一旦後回し
end
