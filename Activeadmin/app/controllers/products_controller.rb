class ProductsController < ApplicationController
  def index
    @products=Product.all
  end

  def show
    @products=Product.find(params[:id])
  end

  def delete
  end

  def edit
    @prot=Product.find(params[:id])
  end

  def update
    @prot=Product.find(params[:id])
    @prot.update_attributes(prot_params)
    redirect_to(:action=>'index')
  end
  

  def new
    @products=Product.new
  end

  def create
    @products=Product.new(prot_params)
    @products.save
    redirect_to(:action=>'index')
  end

  private
  def prot_params
    params.require(:prot).permit(:name, :price, :expire_date, :sku_id, :image)
  end
end
