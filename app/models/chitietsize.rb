class Chitietsize < ApplicationRecord
  belongs_to :chitietsanpham
  belongs_to :sizesanpham

  def name
    return id
  end
  def select_name
    return sanpham.tensanpham
  end
end
