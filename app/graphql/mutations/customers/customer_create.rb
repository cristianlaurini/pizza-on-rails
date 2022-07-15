# frozen_string_literal: true

module Mutations
    module Customers
      class CustomerCreate < BaseMutation
  
        argument :first_name, String, required: true
        argument :last_name, String, required: true
  
        field :customer, Types::CustomerType, null: false
  
        def resolve first_name:, last_name:
          customer = Customer.new first_name: first_name, last_name: last_name
          if customer.save
            { customer: customer }
          end
        end
      end
    end
  end
  