require 'test_helper'

class NovelsControllerTest < ActionController::TestCase
  setup do
    @novel = novels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:novels)
  end

  test "should create novel" do
    assert_difference('Novel.count') do
      post :create, novel: {  }
    end

    assert_response 201
  end

  test "should show novel" do
    get :show, id: @novel
    assert_response :success
  end

  test "should update novel" do
    put :update, id: @novel, novel: {  }
    assert_response 204
  end

  test "should destroy novel" do
    assert_difference('Novel.count', -1) do
      delete :destroy, id: @novel
    end

    assert_response 204
  end
end
