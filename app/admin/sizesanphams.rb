ActiveAdmin.register Sizesanpham do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :tensize
  actions :all, except: [:destroy]
  #
  # or
  #
  # permit_params do
  #   permitted = [:tensize]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
