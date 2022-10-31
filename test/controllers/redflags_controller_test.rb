require "test_helper"

class RedflagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @redflag = redflags(:one)
  end

  test "should get index" do
    get redflags_url, as: :json
    assert_response :success
  end

  test "should create redflag" do
    assert_difference("Redflag.count") do
      post redflags_url, params: { redflag: { description: @redflag.description, location: @redflag.location, status: @redflag.status, user_id: @redflag.user_id, video: @redflag.video } }, as: :json
    end

    assert_response :created
  end

  test "should show redflag" do
    get redflag_url(@redflag), as: :json
    assert_response :success
  end

  test "should update redflag" do
    patch redflag_url(@redflag), params: { redflag: { description: @redflag.description, location: @redflag.location, status: @redflag.status, user_id: @redflag.user_id, video: @redflag.video } }, as: :json
    assert_response :success
  end

  test "should destroy redflag" do
    assert_difference("Redflag.count", -1) do
      delete redflag_url(@redflag), as: :json
    end

    assert_response :no_content
  end
end
