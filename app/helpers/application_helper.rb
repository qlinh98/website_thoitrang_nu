module ApplicationHelper
  def show_chitietsp(id_product)
    @ctsps = Sanpham.includes(:chitietsanpham).where(id: id_product).last.chitietsanpham
  end

  # in arr danh sach huu ich neu no thuoc item_hui
  def show_hui(id_product)
    @arr_hui = []
    @hui.each do |itemset|
      @arr_hui << itemset if itemset.include?(id_product)
    end
    @arr_hui
  end

  # loai bo chi tiet san pham trung trong 1 san pham
  def delete_ctsp(arr_id_ctsp)
    unless arr_id_ctsp.nil?
      itemset = []
      arr = []
      arr_id_ctsp.each do |x|
        sanpham_id = Chitietsanpham.where(id: x)[0].sanpham_id
        unless arr.include? (sanpham_id)
          arr << sanpham_id
          itemset << x
        end
      end
      itemset
    end
  end

  # loai bo chi tiet san pham trung trong 1 san pham
  def delete_ctsp_trung(arr_input, arr_output)
    unless arr_output.nil?
      arr = []
      arr_input.each do |x|
        sanpham_id = Chitietsanpham.where(id: x)[0].sanpham_id
        arr_output.each do |y|
          if Chitietsanpham.where(id: x)[0].sanpham_id == Chitietsanpham.where(id: y)[0].sanpham_id
            arr_output.reject! { |item| item == y }
          end
        end
      end
      arr_output
    end
  end

  # ham chinh xu li HUI trùng trong show cart va show sanpham
  def get_hui_cart(arr_id_ctsp)
    @arr = []
    @hui.each do |itemset|
      value = 1
      arr_id_ctsp.each do |id|
        unless itemset.include?(id)
          value = 0
        end
      end
      if value == 1
        arr_id_ctsp.each do |id|
          itemset.reject! { |x| x == id }
        end
        unless itemset.empty?
          itemset = delete_ctsp(itemset)
          @arr << delete_ctsp_trung(arr_id_ctsp, itemset)
        end
      end
    end
    if @arr.empty?
      arr_id_ctsp.each do |id|
        if show_hui(id).empty?
          @arr << delete_ctsp_trung(arr_id_ctsp, delete_ctsp(@hui.sample))
          break
        else
          @arr << delete_ctsp_trung(arr_id_ctsp, delete_ctsp(show_hui(id).sample.reject { |x| x == id }))
        end
      end
    end
    @arr
  end

  #  show cart
  def show_hui_cart(arr_ctdh)
    get_hui_cart((arr_ctdh.pluck(:chitietsanpham_id))).compact.empty? ? a = [] : a = get_hui_cart((arr_ctdh.pluck(:chitietsanpham_id))).reject { |c| c.empty? }
  end

  # show sanpham
  def show_hui_product(sanpham)
    return if sanpham.blank? || sanpham.chitietsanpham.blank?
    get_hui_cart([sanpham.chitietsanpham[0].id]).compact.empty? ? a = [] : a = get_hui_cart([sanpham.chitietsanpham[0].id]).reject { |c| c.empty? }
  end
end
