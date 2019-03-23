class OrderEmailReceiptPreview < ActionMailer::Preview
    def order_receipt_email
        OrderEmailReceipt.order_receipt_email(Order.last)
    end
end