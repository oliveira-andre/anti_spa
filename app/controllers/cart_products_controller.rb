# frozen_string_literal: true

class CartProductsController < ApplicationController
  before_action :load_cart_products, only: :new
  before_action :load_cart_product, only: :destroy

  def new; end

  def create
    @cart_product = CartProduct.create(cart_product_params)
    @error = load_error
  end

  def destroy
    @cart_product.destroy
    load_cart_products
  end

  private

  def load_cart_products
    @cart_products = CartProduct.where(cart: @cart)
  end

  def load_cart_product
    @cart_product = CartProduct.find(params[:id])
  end

  def cart_product_params
    params.permit(:product_id).merge(cart: @cart, quantity: 1)
  end

  def load_error
    @cart_product.valid? ? false : true
  end
end
