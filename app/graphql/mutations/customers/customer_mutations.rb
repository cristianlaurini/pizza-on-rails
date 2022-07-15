module Mutations
      module Customers
        class CustomerMutations < Types::BaseObject
            field :customer_create, mutation: CustomerCreate
        end
    end
end