class Mausanpham < ApplicationRecord
  has_many :chitietsanpham
  # has_many :chitietmau_size
  # has_many :chitietsanpham, through: :chitietsize
  # has_many :sizesanpham, through: :chitietmau_size

  def name
    return tenmau
  end
end
