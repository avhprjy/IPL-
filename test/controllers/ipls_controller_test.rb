require 'test_helper'

class IplsControllerTest < ActionController::TestCase
  setup do
    @ipl = ipls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ipls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ipl" do
    assert_difference('Ipl.count') do
      post :create, ipl: { player_country: @ipl.player_country, player_name: @ipl.player_name }
    end

    assert_redirected_to ipl_path(assigns(:ipl))
  end

  test "should show ipl" do
    get :show, id: @ipl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ipl
    assert_response :success
  end

  test "should update ipl" do
    patch :update, id: @ipl, ipl: { player_country: @ipl.player_country, player_name: @ipl.player_name }
    assert_redirected_to ipl_path(assigns(:ipl))
  end

  test "should destroy ipl" do
    assert_difference('Ipl.count', -1) do
      delete :destroy, id: @ipl
    end

    assert_redirected_to ipls_path
  end
end
