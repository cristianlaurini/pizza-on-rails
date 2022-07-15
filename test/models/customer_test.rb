# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  first_name :string           not null
#  last_name  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class CustomerTest < ActiveSupport::TestCase

  test "customer should have first name" do
    customer = Customer.new
    assert_not customer.save
  end

  test "customer should have last name" do
    customer = Customer.new first_name: "John"
    assert_not customer.save
  end

  test "customer with correct fields saves" do
    customer = Customer.new first_name: "John", last_name: "Smith"
    assert customer.save
  end

end
