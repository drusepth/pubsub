require 'test_helper'

class PublisherBookmarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publisher_bookmark = publisher_bookmarks(:one)
  end

  test "should get index" do
    get publisher_bookmarks_url
    assert_response :success
  end

  test "should get new" do
    get new_publisher_bookmark_url
    assert_response :success
  end

  test "should create publisher_bookmark" do
    assert_difference('PublisherBookmark.count') do
      post publisher_bookmarks_url, params: { publisher_bookmark: { publisher_id: @publisher_bookmark.publisher_id, user_id: @publisher_bookmark.user_id } }
    end

    assert_redirected_to publisher_bookmark_url(PublisherBookmark.last)
  end

  test "should show publisher_bookmark" do
    get publisher_bookmark_url(@publisher_bookmark)
    assert_response :success
  end

  test "should get edit" do
    get edit_publisher_bookmark_url(@publisher_bookmark)
    assert_response :success
  end

  test "should update publisher_bookmark" do
    patch publisher_bookmark_url(@publisher_bookmark), params: { publisher_bookmark: { publisher_id: @publisher_bookmark.publisher_id, user_id: @publisher_bookmark.user_id } }
    assert_redirected_to publisher_bookmark_url(@publisher_bookmark)
  end

  test "should destroy publisher_bookmark" do
    assert_difference('PublisherBookmark.count', -1) do
      delete publisher_bookmark_url(@publisher_bookmark)
    end

    assert_redirected_to publisher_bookmarks_url
  end
end
