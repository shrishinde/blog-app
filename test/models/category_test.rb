require "test_helper"

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.new(name: "sports")
  end

  test "Category should be valid" do
    assert @category.valid?
  end

  test "name should be present" do
    @category.name = " "
    assert_not @category.valid?
  end

  test "uniqueness of name" do
    @category.save
    test_category = Category.new(name: "sports")
    assert_not test_category.valid?
  end

  test "name should not be too long" do
    test_category = Category.new(name: "n"*11)
    assert_not test_category.valid?
  end

  test "name should not be too short" do
    test_category = Category.new(name: "n")
    assert_not test_category.valid?
  end

end