# module Types
#   class QueryType < Types::BaseObject
#     # Add root-level fields here.
#     # They will be entry points for queries on your schema.

#     # TODO: remove me
#     field :test_field, String, null: false,
#       description: "An example field added by the generator"
#     def test_field
#       "Hello World!"
#     end
#   end
# end

module Types
  class QueryType < Types::BaseObject
      field :all_orders, [Types::OrderType], null: false

      def all_orders
          Order.all
      end
  end
end