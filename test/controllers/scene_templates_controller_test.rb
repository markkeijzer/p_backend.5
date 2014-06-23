require 'test_helper'

class SceneTemplatesControllerTest < ActionController::TestCase
  setup do
    @scene_template = scene_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scene_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scene_template" do
    assert_difference('SceneTemplate.count') do
      post :create, scene_template: { description: @scene_template.description, image_url: @scene_template.image_url, max_length: @scene_template.max_length, name: @scene_template.name, required: @scene_template.required, review_template_id: @scene_template.review_template_id, sort_order: @scene_template.sort_order }
    end

    assert_redirected_to scene_template_path(assigns(:scene_template))
  end

  test "should show scene_template" do
    get :show, id: @scene_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scene_template
    assert_response :success
  end

  test "should update scene_template" do
    patch :update, id: @scene_template, scene_template: { description: @scene_template.description, image_url: @scene_template.image_url, max_length: @scene_template.max_length, name: @scene_template.name, required: @scene_template.required, review_template_id: @scene_template.review_template_id, sort_order: @scene_template.sort_order }
    assert_redirected_to scene_template_path(assigns(:scene_template))
  end

  test "should destroy scene_template" do
    assert_difference('SceneTemplate.count', -1) do
      delete :destroy, id: @scene_template
    end

    assert_redirected_to scene_templates_path
  end
end
