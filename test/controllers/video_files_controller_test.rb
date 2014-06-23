require 'test_helper'

class VideoFilesControllerTest < ActionController::TestCase
  setup do
    @video_file = video_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_file" do
    assert_difference('VideoFile.count') do
      post :create, video_file: { file_path: @video_file.file_path, review_id: @video_file.review_id, scene_id: @video_file.scene_id }
    end

    assert_redirected_to video_file_path(assigns(:video_file))
  end

  test "should show video_file" do
    get :show, id: @video_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @video_file
    assert_response :success
  end

  test "should update video_file" do
    patch :update, id: @video_file, video_file: { file_path: @video_file.file_path, review_id: @video_file.review_id, scene_id: @video_file.scene_id }
    assert_redirected_to video_file_path(assigns(:video_file))
  end

  test "should destroy video_file" do
    assert_difference('VideoFile.count', -1) do
      delete :destroy, id: @video_file
    end

    assert_redirected_to video_files_path
  end
end
