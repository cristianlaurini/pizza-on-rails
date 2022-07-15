module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :customers, [Types::CustomerType], null: false

    def customers
        Customer.all
    end
    
  end
end
