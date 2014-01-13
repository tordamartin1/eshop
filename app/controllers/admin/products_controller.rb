class Admin::ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find paramas[:id]
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find params[:id]
  end

  def create
    @product = Product.new params[:product].permit(:name, :description, :price, :image_url)

    if @product.save
      redirect_to admin_products_url
    else 
      render :new 
    end
  end

  def update

    @product = Product.find params[:id]

    if @product.update params[:product].permit(:name, :descrtiption, :price, :image_url)
     redirect_to admin_products_url
    else
     render :edit
    end
  end

end
