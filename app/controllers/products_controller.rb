class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def show
    @product = Product.find_by_id(params[:id])
  end

  def description
    product = Product.find_by_id(params[:id])
    render plain: product.description
  end

  def inventory
    product = Product.find_by_id(params[:id])
    # binding.pry
    if product.inventory >= 1
      render plain: "true"
    else
      render plain: "false"
    end
  end


  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :inventory)
  end
end
