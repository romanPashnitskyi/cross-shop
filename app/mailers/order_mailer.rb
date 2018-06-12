class OrderMailer < ApplicationMailer
  default from: 'Cross-Shop <cross-shop@gmail.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    @order = order
    mail to: order.email, subject: 'Підтвердження замовлення в магазині Cross-Shop'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped(order)
    @order = order

    mail to: order.email, subject: 'Cross-Shop відправив Ваше замовлення'
  end
end
