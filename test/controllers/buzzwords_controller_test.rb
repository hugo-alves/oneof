require 'test_helper'

class BuzzwordsControllerTest < ActionController::TestCase
  setup do
    @buzzword = buzzwords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buzzwords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buzzword" do
    assert_difference('Buzzword.count') do
      post :create, buzzword: { title: @buzzword.title, url: @buzzword.url }
    end

    assert_redirected_to buzzword_path(assigns(:buzzword))
  end

  test "should show buzzword" do
    get :show, id: @buzzword
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buzzword
    assert_response :success
  end

  test "should update buzzword" do
    patch :update, id: @buzzword, buzzword: { title: @buzzword.title, url: @buzzword.url }
    assert_redirected_to buzzword_path(assigns(:buzzword))
  end

  test "should destroy buzzword" do
    assert_difference('Buzzword.count', -1) do
      delete :destroy, id: @buzzword
    end

    assert_redirected_to buzzwords_path
  end
end
