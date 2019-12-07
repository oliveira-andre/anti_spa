# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_variant

  private

  def set_variant
    request.variant = browser.device.mobile? ? :mobile : :desktop
  end
end
