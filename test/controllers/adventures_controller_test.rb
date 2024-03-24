require "test_helper"

class AdventuresControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/adventures.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Adventure.count, data.length
  end
  test "create" do
    assert_difference "Adventure.count", 1 do
      post "/adventures.json", params: { name: "hello world", description: "hi hi hi", rating: 5 }
      assert_response 200
    end
  end
end
