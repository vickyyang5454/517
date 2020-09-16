require "application_system_test_case"

class TeachmentsTest < ApplicationSystemTestCase
  setup do
    @teachment = teachments(:one)
  end

  test "visiting the index" do
    visit teachments_url
    assert_selector "h1", text: "Teachments"
  end

  test "creating a Teachment" do
    visit teachments_url
    click_on "New Teachment"

    click_on "Create Teachment"

    assert_text "Teachment was successfully created"
    click_on "Back"
  end

  test "updating a Teachment" do
    visit teachments_url
    click_on "Edit", match: :first

    click_on "Update Teachment"

    assert_text "Teachment was successfully updated"
    click_on "Back"
  end

  test "destroying a Teachment" do
    visit teachments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teachment was successfully destroyed"
  end
end
