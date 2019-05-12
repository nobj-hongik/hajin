require 'test_helper'

class SecondpostsControllerTest < ActionController::TestCase
  setup do
    @secondpost = secondposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secondposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secondpost" do
    assert_difference('Secondpost.count') do
      post :create, secondpost: { content: @secondpost.content, image: @secondpost.image, title: @secondpost.title }
    end

    assert_redirected_to secondpost_path(assigns(:secondpost))
  end

  test "should show secondpost" do
    get :show, id: @secondpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @secondpost
    assert_response :success
  end

  test "should update secondpost" do
    patch :update, id: @secondpost, secondpost: { content: @secondpost.content, image: @secondpost.image, title: @secondpost.title }
    assert_redirected_to secondpost_path(assigns(:secondpost))
  end

  test "should destroy secondpost" do
    assert_difference('Secondpost.count', -1) do
      delete :destroy, id: @secondpost
    end

    assert_redirected_to secondposts_path
  end
end
