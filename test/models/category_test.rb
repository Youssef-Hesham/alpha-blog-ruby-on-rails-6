require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

    test "Category shouuld be Valid" do
        @category = Category.new(name: "Sports")
        assert @category.valid?
    end

end