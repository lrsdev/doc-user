require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reports)
  end

  test "should create report" do
    assert_difference('Report.count') do
      post :create, report: { animal_id: @report.animal_id, blurb: @report.blurb, image_url: @report.image_url, location_id: @report.location_id, user_id: @report.user_id }
    end

    assert_response 201
  end

  test "should show report" do
    get :show, id: @report
    assert_response :success
  end

  test "should update report" do
    put :update, id: @report, report: { animal_id: @report.animal_id, blurb: @report.blurb, image_url: @report.image_url, location_id: @report.location_id, user_id: @report.user_id }
    assert_response 204
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete :destroy, id: @report
    end

    assert_response 204
  end
end
