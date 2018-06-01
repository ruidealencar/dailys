require "application_system_test_case"

class MorningFormsTest < ApplicationSystemTestCase
  setup do
    @morning_form = morning_forms(:one)
  end

  test "visiting the index" do
    visit morning_forms_url
    assert_selector "h1", text: "Morning Forms"
  end

  test "creating a Morning form" do
    visit morning_forms_url
    click_on "New Morning Form"

    fill_in "Answer1", with: @morning_form.answer1
    fill_in "Answer2", with: @morning_form.answer2
    click_on "Create Morning form"

    assert_text "Morning form was successfully created"
    click_on "Back"
  end

  test "updating a Morning form" do
    visit morning_forms_url
    click_on "Edit", match: :first

    fill_in "Answer1", with: @morning_form.answer1
    fill_in "Answer2", with: @morning_form.answer2
    click_on "Update Morning form"

    assert_text "Morning form was successfully updated"
    click_on "Back"
  end

  test "destroying a Morning form" do
    visit morning_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Morning form was successfully destroyed"
  end
end
