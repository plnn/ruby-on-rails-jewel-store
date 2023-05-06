class StoreController < ApplicationController
  def index
    @products = Product.all
    @cart = current_cart
  end
  def news
           #@product = Product.news

           #respond_to do |format|
           #format.html { redirect_to(store_url) }
           #format.json { render json: @product }
        #end
  end
  def contact
  end
  def questions
  end
end
