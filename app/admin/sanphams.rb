ActiveAdmin.register Sanpham do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :tensanpham, :mota, :loaisanpham_id, :thuonghieu_id
  actions :all, except: [:destroy]
  #
  # or

  filter :tensanpham, as: :string, label: 'Tên sản phẩm'
  
  filter :loaisanpham, collection: -> { Loaisanpham.all }
  filter :thuonghieu, collection: -> { Thuonghieu.all }
  #
  # permit_params do
  #   permitted = [:tensanpham, :giaban, :mota, :loaisanpham_id, :thuonghieu_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
