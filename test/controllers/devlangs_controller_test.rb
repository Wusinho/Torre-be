require "test_helper"

class DevlangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @devlang = devlangs(:one)
  end

  test "should get index" do
    get devlangs_url, as: :json
    assert_response :success
  end

  test "should create devlang" do
    assert_difference('Devlang.count') do
      post devlangs_url, params: { devlang: { developer_id: @devlang.developer_id, fluency: @devlang.fluency, language: @devlang.language } }, as: :json
    end

    assert_response 201
  end

  test "should show devlang" do
    get devlang_url(@devlang), as: :json
    assert_response :success
  end

  test "should update devlang" do
    patch devlang_url(@devlang), params: { devlang: { developer_id: @devlang.developer_id, fluency: @devlang.fluency, language: @devlang.language } }, as: :json
    assert_response 200
  end

  test "should destroy devlang" do
    assert_difference('Devlang.count', -1) do
      delete devlang_url(@devlang), as: :json
    end

    assert_response 204
  end
end
