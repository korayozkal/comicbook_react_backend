require 'test_helper'

class ComicbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comicbook = comicbooks(:one)
  end

  test "should get index" do
    get comicbooks_url, as: :json
    assert_response :success
  end

  test "should create comicbook" do
    assert_difference('Comicbook.count') do
      post comicbooks_url, params: { comicbook: { artist: @comicbook.artist, image_url: @comicbook.image_url, publisher: @comicbook.publisher, title: @comicbook.title, writer: @comicbook.writer } }, as: :json
    end

    assert_response 201
  end

  test "should show comicbook" do
    get comicbook_url(@comicbook), as: :json
    assert_response :success
  end

  test "should update comicbook" do
    patch comicbook_url(@comicbook), params: { comicbook: { artist: @comicbook.artist, image_url: @comicbook.image_url, publisher: @comicbook.publisher, title: @comicbook.title, writer: @comicbook.writer } }, as: :json
    assert_response 200
  end

  test "should destroy comicbook" do
    assert_difference('Comicbook.count', -1) do
      delete comicbook_url(@comicbook), as: :json
    end

    assert_response 204
  end
end
