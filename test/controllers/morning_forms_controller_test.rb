require 'test_helper'

class MorningFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @morning_form = morning_forms(:one)
  end

  test "should get index" do
    get morning_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_morning_form_url
    assert_response :success
  end

  test "should create morning_form" do
    assert_difference('MorningForm.count') do
      post morning_forms_url, params: { morning_form: { answer1: @morning_form.answer1, answer2: @morning_form.answer2 } }
    end

    assert_redirected_to morning_form_url(MorningForm.last)
  end

  test "should show morning_form" do
    get morning_form_url(@morning_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_morning_form_url(@morning_form)
    assert_response :success
  end

  test "should update morning_form" do
    patch morning_form_url(@morning_form), params: { morning_form: { answer1: @morning_form.answer1, answer2: @morning_form.answer2 } }
    assert_redirected_to morning_form_url(@morning_form)
  end

  test "should destroy morning_form" do
    assert_difference('MorningForm.count', -1) do
      delete morning_form_url(@morning_form)
    end

    assert_redirected_to morning_forms_url
  end
end
