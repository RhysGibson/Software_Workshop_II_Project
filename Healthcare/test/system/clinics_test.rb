require "application_system_test_case"

class ClinicsTest < ApplicationSystemTestCase
  setup do
    @clinic = clinics(:one)
  end

  test "visiting the index" do
    visit clinics_url
    assert_selector "h1", text: "Clinics"
  end

  test "creating a Clinic" do
    visit clinics_url
    click_on "New Clinic"

    fill_in "Address", with: @clinic.address
    fill_in "Latitude", with: @clinic.latitude
    fill_in "Longitude", with: @clinic.longitude
    fill_in "Name", with: @clinic.name
    click_on "Create Clinic"

    assert_text "Clinic was successfully created"
    click_on "Back"
  end

  test "updating a Clinic" do
    visit clinics_url
    click_on "Edit", match: :first

    fill_in "Address", with: @clinic.address
    fill_in "Latitude", with: @clinic.latitude
    fill_in "Longitude", with: @clinic.longitude
    fill_in "Name", with: @clinic.name
    click_on "Update Clinic"

    assert_text "Clinic was successfully updated"
    click_on "Back"
  end

  test "destroying a Clinic" do
    visit clinics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clinic was successfully destroyed"
  end
end
