class Mutations::CreatePayment < Mutations::BaseMutation
    argument :orderId, Integer, required: true
    argument :amount, Float, required: true
    argument :status, String, required: false

    field :payment, Types::PaymentType, null: false
    field :order, Types::OrderType, null: false
    field :errors, [String], null: false

    def resolve(orderId:, amount:, status:)
        
        payment = Payment.new(order_id: orderId, amount: amount, status: status)
        if payment.save
            order = Order.find(orderId)
            {
                order: order,
                errors: []
            }
        else
            {
                order: nil,
                errors: payment.errors.full_messages
            }
        end
    end
end