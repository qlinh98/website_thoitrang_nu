class Sizesanpham < ApplicationRecord
  has_many :chitietsize
  has_many :chitietsanpham, through: :chitietsize
  # has_many :mausanpham, through: :chitietmau_size

  def name
    return tensize
  end
end
