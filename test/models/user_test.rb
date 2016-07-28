require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@user = users(:one)
  end

  test "user one must have 3 pokemons" do
  	assert_equal @user.pokemons.count, 3
  end

  test "user trainer1 must have a caterpie" do
  	assert_includes @user.catalogs, catalogs(:two)
  end
end
