require 'test_helper'

class YeastsControllerTest < ActionController::TestCase
  setup do
    @yeast = yeasts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yeasts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yeast" do
    assert_difference('Yeast.count') do
      post :create, yeast: { country_id: @yeast.country_id, floc_rate: @yeast.floc_rate, name: @yeast.name }
    end

    assert_redirected_to yeast_path(assigns(:yeast))
  end

  test "should show yeast" do
    get :show, id: @yeast
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yeast
    assert_response :success
  end

  test "should update yeast" do
    patch :update, id: @yeast, yeast: { country_id: @yeast.country_id, floc_rate: @yeast.floc_rate, name: @yeast.name }
    assert_redirected_to yeast_path(assigns(:yeast))
  end

  test "should destroy yeast" do
    assert_difference('Yeast.count', -1) do
      delete :destroy, id: @yeast
    end

    assert_redirected_to yeasts_path
  end
end
