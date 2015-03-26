require 'test_helper'

class MaltsControllerTest < ActionController::TestCase
  setup do
    @malt = malts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:malts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create malt" do
    assert_difference('Malt.count') do
      post :create, malt: { country_id: @malt.country_id, ebc: @malt.ebc, name: @malt.name }
    end

    assert_redirected_to malt_path(assigns(:malt))
  end

  test "should show malt" do
    get :show, id: @malt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @malt
    assert_response :success
  end

  test "should update malt" do
    patch :update, id: @malt, malt: { country_id: @malt.country_id, ebc: @malt.ebc, name: @malt.name }
    assert_redirected_to malt_path(assigns(:malt))
  end

  test "should destroy malt" do
    assert_difference('Malt.count', -1) do
      delete :destroy, id: @malt
    end

    assert_redirected_to malts_path
  end
end
