require 'test_helper'

class UsdemosControllerTest < ActionController::TestCase
  setup do
    @usdemo = usdemos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usdemos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usdemo" do
    assert_difference('Usdemo.count') do
      post :create, usdemo: { customer: @usdemo.customer, description: @usdemo.description, disposition: @usdemo.disposition, estimated_hours: @usdemo.estimated_hours, name: @usdemo.name, status: @usdemo.status, tracker: @usdemo.tracker }
    end

    assert_redirected_to usdemo_path(assigns(:usdemo))
  end

  test "should show usdemo" do
    get :show, id: @usdemo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usdemo
    assert_response :success
  end

  test "should update usdemo" do
    put :update, id: @usdemo, usdemo: { customer: @usdemo.customer, description: @usdemo.description, disposition: @usdemo.disposition, estimated_hours: @usdemo.estimated_hours, name: @usdemo.name, status: @usdemo.status, tracker: @usdemo.tracker }
    assert_redirected_to usdemo_path(assigns(:usdemo))
  end

  test "should destroy usdemo" do
    assert_difference('Usdemo.count', -1) do
      delete :destroy, id: @usdemo
    end

    assert_redirected_to usdemos_path
  end
end
