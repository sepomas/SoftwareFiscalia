require "application_system_test_case"

class ThiefsTest < ApplicationSystemTestCase
  setup do
    @thief = thiefs(:one)
  end

  test "visiting the index" do
    visit thiefs_url
    assert_selector "h1", text: "Thiefs"
  end

  test "creating a Thief" do
    visit thiefs_url
    click_on "New Thief"

    click_on "Create Thief"

    assert_text "Thief was successfully created"
    click_on "Back"
  end

  test "updating a Thief" do
    visit thiefs_url
    click_on "Edit", match: :first

    click_on "Update Thief"

    assert_text "Thief was successfully updated"
    click_on "Back"
  end

  test "destroying a Thief" do
    visit thiefs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thief was successfully destroyed"
  end
end
