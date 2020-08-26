module SanphamsHelper
  def list_color(ctsp)
    mausp = []
    ctsp.chitietsize.each do |x|
      mausp << x.mausanpham.tenmau
    end
    mausp.uniq!
  end

  def sizesp(ctsp)
    size = []
    ctsp.chitietsize.each do |x|
      size << x.sizesanpham.tensize
    end
    size
    # binding.pry
  end
  def soluong_sp(id_pro,tenmau_sp)
    # Chitietsize.where(chitietsanpham_id: id_pro, sizesanpham_id: Sizesanpham.where(tensize: tenmau_sp))[0].soluongton
    Chitietsize.where(chitietsanpham_id: id_pro)
    # binding.pry
  end
end
