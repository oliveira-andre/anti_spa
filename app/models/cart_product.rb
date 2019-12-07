# frozen_string_literal: true

class CartProduct < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  validates :cart, :product, :quantity, presence: true
end
