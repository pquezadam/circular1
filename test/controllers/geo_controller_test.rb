require 'test_helper'

class GeoControllerTest < ActionDispatch::IntegrationTest
  test "should get findaddress" do
    get geo_findaddress_url
    assert_response :success
  end

end
