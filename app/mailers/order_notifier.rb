class OrderNotifier < ApplicationMailer
  default from: 'Sam Ruby <depot@example.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  #def received
#  #  @greeting = "Hi"
#
  #  mail to: "to@example.org"
  #end

  def received(postagemEmail)
    @postagemEmail = postagemEmail
    mail to: postagemEmail.email, subject: 'Confirmação de postagem'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  #def shipped
#  #  @greeting = "Hi"
#
  #  mail to: "to@example.org"
  #end

  def shipped(postagemEmail)
    @postagemEmail = postagemEmail
    mail to: postagemEmail.email, subject: 'Pragmatic Store Order Shipped'
  end
end
