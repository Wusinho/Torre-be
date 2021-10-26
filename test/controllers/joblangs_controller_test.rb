require "test_helper"

class JoblangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @joblang = joblangs(:one)
  end

  test "should get index" do
    get joblangs_url, as: :json
    assert_response :success
  end

  test "should create joblang" do
    assert_difference('Joblang.count') do
      post joblangs_url, params: { joblang: { fluency: @joblang.fluency, language: @joblang.language, post_id: @joblang.post_id } }, as: :json
    end

    assert_response 201
  end

  test "should show joblang" do
    get joblang_url(@joblang), as: :json
    assert_response :success
  end

  test "should update joblang" do
    patch joblang_url(@joblang), params: { joblang: { fluency: @joblang.fluency, language: @joblang.language, post_id: @joblang.post_id } }, as: :json
    assert_response 200
  end

  test "should destroy joblang" do
    assert_difference('Joblang.count', -1) do
      delete joblang_url(@joblang), as: :json
    end

    assert_response 204
  end
end
