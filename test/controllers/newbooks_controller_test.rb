require 'test_helper'

class NewbooksControllerTest < ActionDispatch::IntegrationTest
  test "should get books" do
    get newbooks_books_url
    assert_response :success
  end

end
