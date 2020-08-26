ActiveAdmin.register Loaisanpham do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :tenloai, :danhmuc_id
  actions :all, except: [:destroy]
  #
  # or
  #
  # permit_params do
  #   permitted = [:tenloai, :danhmuc_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
