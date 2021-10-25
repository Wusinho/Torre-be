require "test_helper"

class DevstrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @devstr = devstrs(:one)
  end

  test "should get index" do
    get devstrs_url, as: :json
    assert_response :success
  end

  test "should create devstr" do
    assert_difference('Devstr.count') do
      post devstrs_url, params: { devstr: { developer_id: @devstr.developer_id, name: @devstr.name, proficiency: @devstr.proficiency } }, as: :json
    end

    assert_response 201
  end

  test "should show devstr" do
    get devstr_url(@devstr), as: :json
    assert_response :success
  end

  test "should update devstr" do
    patch devstr_url(@devstr), params: { devstr: { developer_id: @devstr.developer_id, name: @devstr.name, proficiency: @devstr.proficiency } }, as: :json
    assert_response 200
  end

  test "should destroy devstr" do
    assert_difference('Devstr.count', -1) do
      delete devstr_url(@devstr), as: :json
    end

    assert_response 204
  end
end
