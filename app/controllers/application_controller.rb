# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include FooterButtons
  before_action :footer_buttons, :set_variant

  def footer_buttons
    @footer_buttons = buttons
  end

  private

  def set_variant
    request.variant = browser.device.mobile? ? :mobile : :desktop
  end
end
