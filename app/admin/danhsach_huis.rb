ActiveAdmin.register DanhsachHui do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment

  permit_params :taphuuich, :dohuuich
  #
  # or
  #
  # permit_params do
  #   permitted = [:taphuuich, :dohuuich]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  actions :all, except: [:show, :edit, :destroy]
  controller do
    # Lưu tập hữu ích vào csdl
    def add_hui
      arr_hui = ChitietDathang.create_db(params[:min].to_i)
      DanhsachHui.delete_all
      arr_hui.each do |itemset, utility|
        @danhsach_hui = DanhsachHui.new
        @danhsach_hui.taphuuich = itemset.join(",")
        # @danhsach_hui.dohuuich = utility
        @danhsach_hui.dohuuich = ActionController::Base.helpers.number_to_currency((utility), unit: "VND", precision: 0, format: "%n %u")
        @danhsach_hui.save
      end
    end

    def new
      add_hui
      redirect_to "/admin/danhsach_huis"
    end
  end

  action_item :view_site1 do
    input :min_utility, id: "input_min", type: "number", min: 1, placeholder: "Nhập ngưỡng tiện ích"
  end
  action_item :view_site do
    link_to "Tìm tập tin hữu ích", new_admin_danhsach_hui_path(min: 30), id: "new_hui"
  end
end