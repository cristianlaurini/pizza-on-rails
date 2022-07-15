module Types
  class MutationType < Types::BaseObject
    
    field :customers, Mutations::Customers::CustomerMutations, null: false

    def customers
        { }
    end

  end
end
