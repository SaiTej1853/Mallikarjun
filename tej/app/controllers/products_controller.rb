class ProductsController < ApplicationController
	def index
	end
	def create
    respond_with :api, :v1, Product.create(product_params)
  end

  def update
    product = Product.find(params["id"])
    Product.update_attributes(product_params)
    respond_with product, json: product
  end
  private

  def product_params
    params.require(:product).permit(:name, :price, :sku_id, :expire_date)
  end
  
end
