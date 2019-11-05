class ImagesController < ApplicationController
  def index 
    @images = Image.order("id DESC").limit(10)
  end
end
