require "test_helper"

class MicropostDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @micropost_detail = micropost_details(:one)
  end

  test "should get index" do
    get micropost_details_url
    assert_response :success
  end

  test "should get new" do
    get new_micropost_detail_url
    assert_response :success
  end

  test "should create micropost_detail" do
    assert_difference("MicropostDetail.count") do
      post micropost_details_url, params: { micropost_detail: { content: @micropost_detail.content, micropost_id: @micropost_detail.micropost_id } }
    end

    assert_redirected_to micropost_detail_url(MicropostDetail.last)
  end

  test "should show micropost_detail" do
    get micropost_detail_url(@micropost_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_micropost_detail_url(@micropost_detail)
    assert_response :success
  end

  test "should update micropost_detail" do
    patch micropost_detail_url(@micropost_detail), params: { micropost_detail: { content: @micropost_detail.content, micropost_id: @micropost_detail.micropost_id } }
    assert_redirected_to micropost_detail_url(@micropost_detail)
  end

  test "should destroy micropost_detail" do
    assert_difference("MicropostDetail.count", -1) do
      delete micropost_detail_url(@micropost_detail)
    end

    assert_redirected_to micropost_details_url
  end
end
