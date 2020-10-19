require 'test_helper'

class Api::V1::UploadControllerTest < ActionDispatch::IntegrationTest
  test "should get direct_post" do
    get api_v1_upload_direct_post_url
    assert_response :success
  end

end
