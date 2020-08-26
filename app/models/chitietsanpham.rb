class Chitietsanpham < ApplicationRecord
  belongs_to :sanpham
  belongs_to :mausanpham
  has_many :chitiethoadonnhap
  has_many :chitiet_dathang
  has_many :chitietsize
  has_many :sizesanpham, through: :chitietsize
  
  mount_uploader :hinh1, FileUploader
  mount_uploader :hinh2, FileUploader
  mount_uploader :hinh3, FileUploader
  mount_uploader :hinh4, FileUploader

  before_destroy :ensure_not_referenced_by_any_line_item
  # binding.pry

  def name
    # return mausanpham.tenmau
    return sanpham.tensanpham
    # return id
  end

  # def name1
  #   return mausanpham.mamau
  # end

  private

  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    unless chitiet_dathang.empty?
      errors.add(:base, "Line Items present")
      throw :abort
    end
  end
end
