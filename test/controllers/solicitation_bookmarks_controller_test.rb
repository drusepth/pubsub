require 'test_helper'

class SolicitationBookmarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitation_bookmark = solicitation_bookmarks(:one)
  end

  test "should get index" do
    get solicitation_bookmarks_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitation_bookmark_url
    assert_response :success
  end

  test "should create solicitation_bookmark" do
    assert_difference('SolicitationBookmark.count') do
      post solicitation_bookmarks_url, params: { solicitation_bookmark: { solicitation_id: @solicitation_bookmark.solicitation_id, user_id: @solicitation_bookmark.user_id } }
    end

    assert_redirected_to solicitation_bookmark_url(SolicitationBookmark.last)
  end

  test "should show solicitation_bookmark" do
    get solicitation_bookmark_url(@solicitation_bookmark)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitation_bookmark_url(@solicitation_bookmark)
    assert_response :success
  end

  test "should update solicitation_bookmark" do
    patch solicitation_bookmark_url(@solicitation_bookmark), params: { solicitation_bookmark: { solicitation_id: @solicitation_bookmark.solicitation_id, user_id: @solicitation_bookmark.user_id } }
    assert_redirected_to solicitation_bookmark_url(@solicitation_bookmark)
  end

  test "should destroy solicitation_bookmark" do
    assert_difference('SolicitationBookmark.count', -1) do
      delete solicitation_bookmark_url(@solicitation_bookmark)
    end

    assert_redirected_to solicitation_bookmarks_url
  end
end
