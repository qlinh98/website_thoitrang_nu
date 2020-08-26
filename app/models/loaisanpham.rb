class Loaisanpham < ApplicationRecord
  belongs_to :danhmuc
  has_many :sanpham

  def name
    return self.tenloai
  end
end
