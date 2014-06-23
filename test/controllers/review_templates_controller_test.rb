require 'test_helper'

class ReviewTemplatesControllerTest < ActionController::TestCase
  setup do
    @review_template = review_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:review_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create review_template" do
    assert_difference('ReviewTemplate.count') do
      post :create, review_template: { custom_scenes_allowed: @review_template.custom_scenes_allowed, product_id: @review_template.product_id, title: @review_template.title }
    end

    assert_redirected_to review_template_path(assigns(:review_template))
  end

  test "should show review_template" do
    get :show, id: @review_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @review_template
    assert_response :success
  end

  test "should update review_template" do
    patch :update, id: @review_template, review_template: { custom_scenes_allowed: @review_template.custom_scenes_allowed, product_id: @review_template.product_id, title: @review_template.title }
    assert_redirected_to review_template_path(assigns(:review_template))
  end

  test "should destroy review_template" do
    assert_difference('ReviewTemplate.count', -1) do
      delete :destroy, id: @review_template
    end

    assert_redirected_to review_templates_path
  end
end
