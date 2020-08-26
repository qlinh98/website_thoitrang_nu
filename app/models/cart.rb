class Cart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :chitiet_dathang, dependent: :nullify

  def add_product(product, sl, mausp, size)
    current_item = chitiet_dathang.find_by(chitietsanpham_id: product.id, size: size)
    # binding.pry
    if current_item
      # current_item.soluong += 1
      current_item.soluong += sl
    elsif sl != 0
      current_item = chitiet_dathang.build(chitietsanpham_id: product.id, soluong: sl)
    else
      current_item = chitiet_dathang.build(chitietsanpham_id: product.id, soluong: 1)
    end
    current_item.dongia = current_item.chitietsanpham.giaban.to_i
    current_item.thanhtien = current_item.dongia * current_item.soluong
    current_item.mausp = mausp
    current_item.size = size
    current_item
  
  end

  def total_price
    chitiet_dathang.to_a.sum { |item| item.total_price }
  end

  def total_item_product
    chitiet_dathang.to_a.sum { |item| item.total_item_product }
  end
end

