# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :load_products
  before_action :load_product, only: %i[destroy edit update]

  def index; end

  def new
    @product = Product.new
  end

  def edit; end

  def create
    @product = Product.create(product_params)
    @product.valid? ? load_products : load_errors
  end

  def update
    @product.update(product_params) ? load_products : load_errors
  end

  def destroy
    @product.destroy ? load_products : @error = true
  end

  private

  def product_params
    params.require(:product).permit(:name, :price)
  end

  def load_products
    @products = Product.all
  end

  def load_product
    @product = Product.find(params[:id])
  end

  def load_errors
    @errors = @product.errors.full_messages
  end
end
