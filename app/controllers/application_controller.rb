# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include FooterButtons
  before_action :footer_buttons, :set_variant, :load_cart

  def footer_buttons
    @footer_buttons = buttons
  end

  private

  def set_variant
    request.variant = browser.device.mobile? ? :mobile : :desktop
  end

  def load_cart
    @cart = Cart.first_or_create(user: User.first)
  end
end
