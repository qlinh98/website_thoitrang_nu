class Danhmuc < ApplicationRecord
  has_many :loaisanpham

  def name
    return self.tendanhmuc
  end
end
