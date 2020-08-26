class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  # default from: 'NgocLam <nguyenngoclam3298@gmail.com>'
  default from: 'Fashion Store <qlinh6647@gmail.com>'
  # binding.pry
  def received(order)
    # binding.pry
    # @order = order
    @dondathang = order
    mail to: order.email, subject: 'Bạn đã đặt hàng thành công từ Fashion Store'
  end
  # def received
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  # def shipped
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end

  def shipped(order)
    @dondathang = order
    mail to: order.email, subject: 'Fashion Store Order Shipped'
  end

end
