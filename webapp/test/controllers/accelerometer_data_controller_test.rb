require 'test_helper'

class AccelerometerDataControllerTest < ActionController::TestCase
  setup do
    @accelerometer_datum = accelerometer_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accelerometer_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accelerometer_datum" do
    assert_difference('AccelerometerDatum.count') do
      post :create, accelerometer_datum: { log_entry_id: @accelerometer_datum.log_entry_id, x_max: @accelerometer_datum.x_max, y_max: @accelerometer_datum.y_max, z_max: @accelerometer_datum.z_max }
    end

    assert_redirected_to accelerometer_datum_path(assigns(:accelerometer_datum))
  end

  test "should show accelerometer_datum" do
    get :show, id: @accelerometer_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accelerometer_datum
    assert_response :success
  end

  test "should update accelerometer_datum" do
    patch :update, id: @accelerometer_datum, accelerometer_datum: { log_entry_id: @accelerometer_datum.log_entry_id, x_max: @accelerometer_datum.x_max, y_max: @accelerometer_datum.y_max, z_max: @accelerometer_datum.z_max }
    assert_redirected_to accelerometer_datum_path(assigns(:accelerometer_datum))
  end

  test "should destroy accelerometer_datum" do
    assert_difference('AccelerometerDatum.count', -1) do
      delete :destroy, id: @accelerometer_datum
    end

    assert_redirected_to accelerometer_data_path
  end
end
