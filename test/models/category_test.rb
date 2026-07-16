require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "should be valid with valid slug" do
    category = Category.new(name: "Test", category_kind: "a", slug: "test-category")
    assert category.valid?
  end

  test "should be invalid with invalid slug format" do
    category = Category.new(name: "Test", category_kind: "a", slug: "Test Category")
    assert_not category.valid?
    assert_includes category.errors[:slug], "只能包含小写字母、数字和连字符"
  end

  test "to_param should return slug" do
    category = Category.new(name: "Test", category_kind: "a", slug: "test-category")
    assert_equal "test-category", category.to_param
  end

  test "should require slug" do
    category = Category.new(name: "Test", category_kind: "a")
    assert_not category.valid?
  end
end
