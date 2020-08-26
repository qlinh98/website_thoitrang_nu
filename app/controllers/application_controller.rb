class ApplicationController < ActionController::Base
  protect_from_forgery
  include CurrentCart
  before_action :set_cart
  before_action :set_hui

  def set_hui
    # @hui = ChitietDathang.export_hui.keys
    # @hui = [[5, 6, 9]]
    @hui = ChitietDathang.get_hui
    @chitiet_sp = Chitietsanpham.all
    # @arr_hui = ChitietDathang.export_hui
  end
end
