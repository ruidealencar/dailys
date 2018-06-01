require 'test_helper'

class AfternoonFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @afternoon_form = afternoon_forms(:one)
  end

  test "should get index" do
    get afternoon_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_afternoon_form_url
    assert_response :success
  end

  test "should create afternoon_form" do
    assert_difference('AfternoonForm.count') do
      post afternoon_forms_url, params: { afternoon_form: { answer1: @afternoon_form.answer1, answer2: @afternoon_form.answer2 } }
    end

    assert_redirected_to afternoon_form_url(AfternoonForm.last)
  end

  test "should show afternoon_form" do
    get afternoon_form_url(@afternoon_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_afternoon_form_url(@afternoon_form)
    assert_response :success
  end

  test "should update afternoon_form" do
    patch afternoon_form_url(@afternoon_form), params: { afternoon_form: { answer1: @afternoon_form.answer1, answer2: @afternoon_form.answer2 } }
    assert_redirected_to afternoon_form_url(@afternoon_form)
  end

  test "should destroy afternoon_form" do
    assert_difference('AfternoonForm.count', -1) do
      delete afternoon_form_url(@afternoon_form)
    end

    assert_redirected_to afternoon_forms_url
  end
end
