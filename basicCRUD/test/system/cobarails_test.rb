require "application_system_test_case"

class CobarailsTest < ApplicationSystemTestCase
  setup do
    @cobarail = cobarails(:one)
  end

  test "visiting the index" do
    visit cobarails_url
    assert_selector "h1", text: "Cobarails"
  end

  test "creating a Cobarail" do
    visit cobarails_url
    click_on "New Cobarail"

    fill_in "Email", with: @cobarail.email
    fill_in "First name", with: @cobarail.first_name
    fill_in "Last name", with: @cobarail.last_name
    fill_in "Phone", with: @cobarail.phone
    fill_in "Twitter", with: @cobarail.twitter
    click_on "Create Cobarail"

    assert_text "Cobarail was successfully created"
    click_on "Back"
  end

  test "updating a Cobarail" do
    visit cobarails_url
    click_on "Edit", match: :first

    fill_in "Email", with: @cobarail.email
    fill_in "First name", with: @cobarail.first_name
    fill_in "Last name", with: @cobarail.last_name
    fill_in "Phone", with: @cobarail.phone
    fill_in "Twitter", with: @cobarail.twitter
    click_on "Update Cobarail"

    assert_text "Cobarail was successfully updated"
    click_on "Back"
  end

  test "destroying a Cobarail" do
    visit cobarails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cobarail was successfully destroyed"
  end
end
