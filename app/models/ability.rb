class Ability
  include CanCan::Ability

  def initialize(admin_user)
    # admin_user ||= AdminUser.new

    # can :read, :all
    if admin_user.admin?
      can :read, ActiveAdmin::Page, name: "Dashboard", namespace_name: "admin"
      can :manage, AdminUser
      cannot :destroy, AdminUser, id: admin_user.id
    elsif admin_user.manager?
      can :manage, ActiveAdmin::Page, name: "Dashboard", namespace_name: "admin"
      can :update, AdminUser, id: admin_user.id
      can :manage, Danhmuc
      can :manage, Sanpham
      can :manage, Loaisanpham
      can :read, User
      can :manage, Mausanpham
      can :manage, Chitietsanpham
      can :manage, Chitietsize
      can :manage, Sizesanpham
      can :manage, Thuonghieu
      can :manage, Dondathang
      can :manage, DanhsachHui
      can :manage, ChitietDathang
      # can :read, Poll
      # can :read, Order
      # can :read, LineItem
      # can :read, Cart
    end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
