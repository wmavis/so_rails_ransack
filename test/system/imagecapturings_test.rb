require "application_system_test_case"

class ImagecapturingsTest < ApplicationSystemTestCase
  setup do
    @imagecapturing = imagecapturings(:one)
  end

  test "visiting the index" do
    visit imagecapturings_url
    assert_selector "h1", text: "Imagecapturings"
  end

  test "creating a Imagecapturing" do
    visit imagecapturings_url
    click_on "New Imagecapturing"

    fill_in "Finish Date", with: @imagecapturing.finish_date
    fill_in "Name", with: @imagecapturing.name
    click_on "Create Imagecapturing"

    assert_text "Imagecapturing was successfully created"
    click_on "Back"
  end

  test "updating a Imagecapturing" do
    visit imagecapturings_url
    click_on "Edit", match: :first

    fill_in "Finish Date", with: @imagecapturing.finish_date
    fill_in "Name", with: @imagecapturing.name
    click_on "Update Imagecapturing"

    assert_text "Imagecapturing was successfully updated"
    click_on "Back"
  end

  test "destroying a Imagecapturing" do
    visit imagecapturings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Imagecapturing was successfully destroyed"
  end
end
