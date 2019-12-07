# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :cart_products
  has_many :carts, through: :cart_products

  validates :name, :price, presence: true
  validates :price, numericaly: { greater_than: 0 }
end
