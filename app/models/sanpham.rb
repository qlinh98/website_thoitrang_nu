class Sanpham < ApplicationRecord
  belongs_to :loaisanpham
  belongs_to :thuonghieu
  has_many :chitietsanpham
  paginates_per 9

  def name
    return self.tensanpham
  end
end
