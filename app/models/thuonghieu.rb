class Thuonghieu < ApplicationRecord
  has_many :sanpham
  def name
    return self.tenthuonghieu
  end
end
