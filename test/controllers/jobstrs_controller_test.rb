require "test_helper"

class JobstrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobstr = jobstrs(:one)
  end

  test "should get index" do
    get jobstrs_url, as: :json
    assert_response :success
  end

  test "should create jobstr" do
    assert_difference('Jobstr.count') do
      post jobstrs_url, params: { jobstr: { name: @jobstr.name, post_id: @jobstr.post_id, proficiency: @jobstr.proficiency } }, as: :json
    end

    assert_response 201
  end

  test "should show jobstr" do
    get jobstr_url(@jobstr), as: :json
    assert_response :success
  end

  test "should update jobstr" do
    patch jobstr_url(@jobstr), params: { jobstr: { name: @jobstr.name, post_id: @jobstr.post_id, proficiency: @jobstr.proficiency } }, as: :json
    assert_response 200
  end

  test "should destroy jobstr" do
    assert_difference('Jobstr.count', -1) do
      delete jobstr_url(@jobstr), as: :json
    end

    assert_response 204
  end
end
