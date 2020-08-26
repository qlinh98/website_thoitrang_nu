ActiveAdmin.register Dondathang do
  index do
    column :id
    column :user_id
    column :ngaydathang
    column :nguoinhanhang
    column :diachigiao
    column :sdt
    column :ghichu
    column :tinhtrang
    column :phuongthuctt
    column :tongtien
    column :giaohang
    actions
  end

  form do |f|
    f.inputs "Dondathang" do
      f.input :nguoinhanhang, label: 'Người nhận hàng', input_html: { disabled: true } 
      f.input :diachigiao, label: 'Địa chỉ giao hàng', input_html: { disabled: true } 
      f.input :sdt, label: 'Số điện thoại', input_html: { disabled: true }
      f.input :ghichu, label: 'Ghi chú', input_html: { disabled: true }
      f.input :tongtien, label: 'Tổng tiền', input_html: { disabled: true }
      f.input :tinhtrang,label: 'Tình trạng đơn hàng', :as => :select, :collection => [['Đã xuất kho', 'Đã xuất kho'], ['Đang giao hàng', 'Đang giao hàng'], ['Đơn hàng đã được nhận', 'Đơn hàng đã được nhận']]
    end
    f.actions
   
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :ngaydathang, :nguoinhanhang, :phuongthuctt, :diachigiao, :sdt, :ghichu, :tinhtrang, :tongtien, :giaohang_id, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:ngaydathang, :nguoinhanhang, :phuongthuctt, :diachigiao, :sdt, :ghichu, :tinhtrang, :tongtien, :giaohang_id, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  actions :all, except: [:destroy]
end
