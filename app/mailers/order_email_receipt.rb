class OrderEmailReceipt < ApplicationMailer
    default from: 'no-reply@jungle.com'
    def order_receipt_email(order)
        @order = order
        mail(to: @order.email, subject: "Your Jungle Order:#{@order.id} Receipt")
    end
end
