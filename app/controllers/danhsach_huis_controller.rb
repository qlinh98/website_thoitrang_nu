class DanhsachHuisController < InheritedResources::Base

  private

    def danhsach_hui_params
      params.require(:danhsach_hui).permit(:taphuuich, :dohuuich)
    end

end
