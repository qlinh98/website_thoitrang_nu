class Dondathang < ApplicationRecord
  belongs_to :giaohang, optional: true
  belongs_to :user, optional: true
  has_many :chitiet_dathang
  require 'stripe'

  def add_line_items_from_cart(cart)
    cart.chitiet_dathang.each do |item|
      # update so luong xuong database
      # binding.pry
      # sl_sp = Chitietsize.where(chitietsanpham_id: item.chitietsanpham_id, sizesanpham_id: Sizesanpham.where(tensize: item.size)[0].id)
      # sl_sp.update(soluongton: sl_sp[0].soluongton - item.soluong)
      arr_ctsize = Chitietsize.where(chitietsanpham_id: item.chitietsanpham_id, sizesanpham_id: Sizesanpham.where(tensize: item.size)[0].id)
      arr_ctsize.each do |x|
        sl_du = x.soluongton - item.soluong
        sl_thieu = item.soluong - x.soluongton
        # if x.soluongton > 0
        if (sl_du >= 0) && x.soluongton > 0
          x.update(soluongton: sl_du)
        elsif sl_thieu > 0 && x.soluongton > 0
          x.update(soluongton: 0)
          item.soluong = sl_thieu
          # next
        end
        # end
      end
      #
      item.cart_id = nil
      chitiet_dathang << item
    end
  end
end
