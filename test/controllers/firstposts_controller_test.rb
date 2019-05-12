require 'test_helper'

class FirstpostsControllerTest < ActionController::TestCase
  setup do
    @firstpost = firstposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:firstposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create firstpost" do
    assert_difference('Firstpost.count') do
      post :create, firstpost: { content: @firstpost.content, image: @firstpost.image, title: @firstpost.title }
    end

    assert_redirected_to firstpost_path(assigns(:firstpost))
  end

  test "should show firstpost" do
    get :show, id: @firstpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @firstpost
    assert_response :success
  end

  test "should update firstpost" do
    patch :update, id: @firstpost, firstpost: { content: @firstpost.content, image: @firstpost.image, title: @firstpost.title }
    assert_redirected_to firstpost_path(assigns(:firstpost))
  end

  test "should destroy firstpost" do
    assert_difference('Firstpost.count', -1) do
      delete :destroy, id: @firstpost
    end

    assert_redirected_to firstposts_path
  end
end
