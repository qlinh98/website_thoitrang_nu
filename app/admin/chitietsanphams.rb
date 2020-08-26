ActiveAdmin.register Chitietsanpham do
  # mount_uploader :hinh1, FileUploader
  # mount_uploader :hinh2, FileUploader
  # mount_uploader :hinh3, FileUploader
  # mount_uploader :hinh4, FileUploader
  # index do
  #   column :id
  #   column :sanpham_id
  #   column :mausanpham_id
  #   column :giaban
  #   actions
  # end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :giaban, :hinh1, :hinh2, :hinh3, :hinh4, :sanpham_id, :mausanpham_id
  actions :all, except: [:destroy]
  #
  # or
  #
  # permit_params do
  #   permitted = [:giaban, :hinh1, :hinh2, :hinh3, :hinh4, :sanpham_id, :mausanpham_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
