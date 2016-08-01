require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@user = users(:one)
  end

  test "ash must have 3 pokemons" do
  	assert_equal 3, @user.pokemons.size
  end

  test "ash must have a caterpie" do
  	#assert_includes @user.catalogs, catalogs(:two)
  	assert_includes @user.catalogs.map(&:name), 'Caterpie'
  end
end
