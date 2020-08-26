class CombineItemsInCart < ActiveRecord::Migration[6.0]
  def change
  end
  def up
    # replace multiple items for a single product in a cart with a
    # single item
    Cart.all.each do |cart|
      # count the number of each product in the cart
      sums = cart.chitiet_dathang.group(:chitietsanpham_id).sum(:soluong)
      sums.each do |chitietsanpham_id, soluong|
        if soluong > 1
          # remove individual items
          cart.chitiet_dathang.where(chitietsanpham_id: chitietsanpham_id).delete_all
          # replace with a single item
          item = cart.chitiet_dathang.build(chitietsanpham_id: chitietsanpham_id)
          item.soluong = soluong
          item.save!
        end
      end
    end
  end

  def down
    # split items with soluong>1 into multiple items
    ChitietDathang.where("soluong>1").each do |line_item|
      # add individual items
      line_item.soluong.times do
        ChitietDathang.create(
          cart_id: line_item.cart_id,
          chitietsanpham_id: line_item.chitietsanpham_id,
          soluong: 1,
        )
      end
      # remove original item
      line_item.destroy
    end
  end
end
