require "application_system_test_case"

class CrimesTest < ApplicationSystemTestCase
  setup do
    @crime = crimes(:one)
  end

  test "visiting the index" do
    visit crimes_url
    assert_selector "h1", text: "Crimes"
  end

  test "creating a Crime" do
    visit crimes_url
    click_on "New Crime"

    click_on "Create Crime"

    assert_text "Crime was successfully created"
    click_on "Back"
  end

  test "updating a Crime" do
    visit crimes_url
    click_on "Edit", match: :first

    click_on "Update Crime"

    assert_text "Crime was successfully updated"
    click_on "Back"
  end

  test "destroying a Crime" do
    visit crimes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crime was successfully destroyed"
  end
end
