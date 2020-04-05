require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest

  def setup
    @category_1 = Category.create(name: "sports")
    @category_2 = Category.create(name: "programming")
  end

  test "should show all categories" do
    get categories_path
    assert_template 'categories/index'
    assert_match 'Showing all categories', response.body
    assert_select "a[href=?]", category_path(@category_1), text: "Show"
      # TODO assert_select "a[href=?]", category_path(@category_2), text: "Show"
  end

end