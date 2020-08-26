ActiveAdmin.register Chitietsize do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :soluongton, :chitietsanpham_id, :sizesanpham_id
  actions :all, except: [:destroy]
  #
  # or

  #
  # permit_params do
  #   permitted = [:soluongton, :chitietsanpham_id, :sizesanpham_id]
  #   permitted << :other if params[:action] == 'create' && current_user.manager?
  #   permitted
  # end

  form do |f|
    f.inputs "New Chitietsize" do
      f.input :chitietsanpham_id, label: "Tensanpham", as: :select, :collection => Chitietsanpham.all.collect { |product| ["#{product.sanpham.tensanpham}_#{product.mausanpham.tenmau}", product.id] } #,  input_html: { disabled: true }
      f.input :sizesanpham #,input_html: { disabled: true }
      f.input :soluongton
      f.actions
    end
  end

  # controller do
  #   def update
  #     s = 0
  #     attrs = params[:chitietsize]

  #     giatien = Chitietsize.where(:id => params[:id])
  #     giatien.each do |x|
  #       s = x.soluongton
  #     end
  #     attrs[:soluongton] = attrs[:soluongton].to_i + s.to_i
  #     @user = Chitietsize.update(soluongton: attrs[:soluongton],
  #                             sizesanpham:  attrs[:sizesanpham],
  #                             sizesanpham_id:  attrs[:sizesanpham_id] )

      
  #       redirect_to "/admin/chitietsizes"
      
      
  #   end
  # end
end
