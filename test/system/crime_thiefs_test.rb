require "application_system_test_case"

class CrimeThiefsTest < ApplicationSystemTestCase
  setup do
    @crime_thief = crime_thiefs(:one)
  end

  test "visiting the index" do
    visit crime_thiefs_url
    assert_selector "h1", text: "Crime Thiefs"
  end

  test "creating a Crime thief" do
    visit crime_thiefs_url
    click_on "New Crime Thief"

    click_on "Create Crime thief"

    assert_text "Crime thief was successfully created"
    click_on "Back"
  end

  test "updating a Crime thief" do
    visit crime_thiefs_url
    click_on "Edit", match: :first

    click_on "Update Crime thief"

    assert_text "Crime thief was successfully updated"
    click_on "Back"
  end

  test "destroying a Crime thief" do
    visit crime_thiefs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crime thief was successfully destroyed"
  end
end
