class ApplicationMailer < ActionMailer::Base

  default from: "no_reply@jungle.com"
  layout 'mailer'

  def receipt_email(order)
    @order = order
    @order_product = @order.line_items
    mail(to: @order.email, subject:"Your order with Jungle: Order ##{@order.id}")
  end

end
