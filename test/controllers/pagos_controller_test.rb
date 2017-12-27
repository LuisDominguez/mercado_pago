require 'test_helper'

class PagosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pagos_new_url
    assert_response :success
  end

  test "should get index" do
    get pagos_index_url
    assert_response :success
  end

end
