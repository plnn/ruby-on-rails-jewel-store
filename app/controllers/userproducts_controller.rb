class UserproductsController < ApplicationController
def index
    @userproducts = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userproducts }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @userproduct = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userproduct }
    end
  end
end
