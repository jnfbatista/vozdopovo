require 'test_helper'

class OuvesControllerTest < ActionController::TestCase
  setup do
    @oufe = ouves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ouves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oufe" do
    assert_difference('Ouve.count') do
      post :create, :oufe => @oufe.attributes
    end

    assert_redirected_to oufe_path(assigns(:oufe))
  end

  test "should show oufe" do
    get :show, :id => @oufe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @oufe.to_param
    assert_response :success
  end

  test "should update oufe" do
    put :update, :id => @oufe.to_param, :oufe => @oufe.attributes
    assert_redirected_to oufe_path(assigns(:oufe))
  end

  test "should destroy oufe" do
    assert_difference('Ouve.count', -1) do
      delete :destroy, :id => @oufe.to_param
    end

    assert_redirected_to ouves_path
  end
end
