require 'test_helper'

class ThirdpostsControllerTest < ActionController::TestCase
  setup do
    @thirdpost = thirdposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thirdposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thirdpost" do
    assert_difference('Thirdpost.count') do
      post :create, thirdpost: { content: @thirdpost.content, image: @thirdpost.image, title: @thirdpost.title }
    end

    assert_redirected_to thirdpost_path(assigns(:thirdpost))
  end

  test "should show thirdpost" do
    get :show, id: @thirdpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thirdpost
    assert_response :success
  end

  test "should update thirdpost" do
    patch :update, id: @thirdpost, thirdpost: { content: @thirdpost.content, image: @thirdpost.image, title: @thirdpost.title }
    assert_redirected_to thirdpost_path(assigns(:thirdpost))
  end

  test "should destroy thirdpost" do
    assert_difference('Thirdpost.count', -1) do
      delete :destroy, id: @thirdpost
    end

    assert_redirected_to thirdposts_path
  end
end
