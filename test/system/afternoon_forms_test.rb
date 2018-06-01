require "application_system_test_case"

class AfternoonFormsTest < ApplicationSystemTestCase
  setup do
    @afternoon_form = afternoon_forms(:one)
  end

  test "visiting the index" do
    visit afternoon_forms_url
    assert_selector "h1", text: "Afternoon Forms"
  end

  test "creating a Afternoon form" do
    visit afternoon_forms_url
    click_on "New Afternoon Form"

    fill_in "Answer1", with: @afternoon_form.answer1
    fill_in "Answer2", with: @afternoon_form.answer2
    click_on "Create Afternoon form"

    assert_text "Afternoon form was successfully created"
    click_on "Back"
  end

  test "updating a Afternoon form" do
    visit afternoon_forms_url
    click_on "Edit", match: :first

    fill_in "Answer1", with: @afternoon_form.answer1
    fill_in "Answer2", with: @afternoon_form.answer2
    click_on "Update Afternoon form"

    assert_text "Afternoon form was successfully updated"
    click_on "Back"
  end

  test "destroying a Afternoon form" do
    visit afternoon_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Afternoon form was successfully destroyed"
  end
end
