# frozen_string_literal: true

module FooterButtons
  extend ActiveSupport::Concern

  def buttons
    [{ description: t('products.title'),
       icon: '<i class="fas fa-list"></i>',
       link: root_path },
     { description: t('carts.title'),
       icon: '<i class="fas fa-shopping-cart"></i>',
       link: new_cart_product_path }]
  end
end
