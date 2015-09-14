require 'test_helper'

class WaterFrequenciesControllerTest < ActionController::TestCase
  setup do
    @water_frequency = water_frequencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:water_frequencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create water_frequency" do
    assert_difference('WaterFrequency.count') do
      post :create, water_frequency: { climate_zone_id: @water_frequency.climate_zone_id, frequency: @water_frequency.frequency, observation: @water_frequency.observation, plant_type_id: @water_frequency.plant_type_id, value: @water_frequency.value }
    end

    assert_redirected_to water_frequency_path(assigns(:water_frequency))
  end

  test "should show water_frequency" do
    get :show, id: @water_frequency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @water_frequency
    assert_response :success
  end

  test "should update water_frequency" do
    patch :update, id: @water_frequency, water_frequency: { climate_zone_id: @water_frequency.climate_zone_id, frequency: @water_frequency.frequency, observation: @water_frequency.observation, plant_type_id: @water_frequency.plant_type_id, value: @water_frequency.value }
    assert_redirected_to water_frequency_path(assigns(:water_frequency))
  end

  test "should destroy water_frequency" do
    assert_difference('WaterFrequency.count', -1) do
      delete :destroy, id: @water_frequency
    end

    assert_redirected_to water_frequencies_path
  end
end
