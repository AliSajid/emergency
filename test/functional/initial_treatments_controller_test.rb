require 'test_helper'

class InitialTreatmentsControllerTest < ActionController::TestCase
  setup do
    @initial_treatment = initial_treatments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:initial_treatments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create initial_treatment" do
    assert_difference('InitialTreatment.count') do
      post :create, initial_treatment: @initial_treatment.attributes
    end

    assert_redirected_to initial_treatment_path(assigns(:initial_treatment))
  end

  test "should show initial_treatment" do
    get :show, id: @initial_treatment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @initial_treatment.to_param
    assert_response :success
  end

  test "should update initial_treatment" do
    put :update, id: @initial_treatment.to_param, initial_treatment: @initial_treatment.attributes
    assert_redirected_to initial_treatment_path(assigns(:initial_treatment))
  end

  test "should destroy initial_treatment" do
    assert_difference('InitialTreatment.count', -1) do
      delete :destroy, id: @initial_treatment.to_param
    end

    assert_redirected_to initial_treatments_path
  end
end
