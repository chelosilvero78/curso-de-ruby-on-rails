require 'test_helper'

class SeriesControllerTest < ActionController::TestCase
  setup do
    @serie = series(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:series)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create serie" do
    assert_difference('Serie.count') do
      post :create, serie: { nombre: @serie.nombre }
    end

    assert_redirected_to serie_path(assigns(:serie))
  end

  test "should show serie" do
    get :show, id: @serie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @serie
    assert_response :success
  end

  test "should update serie" do
    put :update, id: @serie, serie: { nombre: @serie.nombre }
    assert_redirected_to serie_path(assigns(:serie))
  end

  test "should destroy serie" do
    assert_difference('Serie.count', -1) do
      delete :destroy, id: @serie
    end

    assert_redirected_to series_path
  end
end
