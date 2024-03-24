require "test_helper"

class AdventuresControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/adventures.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Adventure.count, data.length
  end
end
