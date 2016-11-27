require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get new_product" do
    get products_new_product_url
    assert_response :success
  end

end
