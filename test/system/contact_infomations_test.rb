require "application_system_test_case"

class ContactInfomationsTest < ApplicationSystemTestCase
  setup do
    @contact_infomation = contact_infomations(:one)
  end

  test "visiting the index" do
    visit contact_infomations_url
    assert_selector "h1", text: "Contact Infomations"
  end

  test "creating a Contact infomation" do
    visit contact_infomations_url
    click_on "New Contact Infomation"

    fill_in "Address", with: @contact_infomation.address
    fill_in "Email", with: @contact_infomation.email
    fill_in "Name", with: @contact_infomation.name
    fill_in "Password", with: @contact_infomation.password
    fill_in "Phone num", with: @contact_infomation.phone_num
    fill_in "User type", with: @contact_infomation.user_type
    click_on "Create Contact infomation"

    assert_text "Contact infomation was successfully created"
    click_on "Back"
  end

  test "updating a Contact infomation" do
    visit contact_infomations_url
    click_on "Edit", match: :first

    fill_in "Address", with: @contact_infomation.address
    fill_in "Email", with: @contact_infomation.email
    fill_in "Name", with: @contact_infomation.name
    fill_in "Password", with: @contact_infomation.password
    fill_in "Phone num", with: @contact_infomation.phone_num
    fill_in "User type", with: @contact_infomation.user_type
    click_on "Update Contact infomation"

    assert_text "Contact infomation was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact infomation" do
    visit contact_infomations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact infomation was successfully destroyed"
  end
end
