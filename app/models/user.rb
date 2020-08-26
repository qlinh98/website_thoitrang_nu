class User < ApplicationRecord
  has_many :dondathang
  has_one :cart
  # after_commit :assign_customer_id, on: :create
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # def assign_customer_id
  #   customer = Stripe::Customer.create(email: email)
  #   self.customer_id = customer.id
  # end
end
