require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  
  test "user should be valid" do
user = User.new(email: "nikol1@gmail.com	", username: "Nikol" ,password: "nikol1234567")
assert user.valid?
puts "user is valid"
end


test "name should be present" do
user = User.new(username: "Nikol")
assert_not user.valid?, "username is empty string"
puts "username is present"
end
end
