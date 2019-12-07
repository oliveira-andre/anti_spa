# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :load_products

  def index; end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    @product.valid? ? load_products : @error = true
  end

  private

  def product_params
    params.require(:product).permit(:name, :price)
  end

  def load_products
    @products = Product.all
  end
end
