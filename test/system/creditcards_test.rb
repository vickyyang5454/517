require "application_system_test_case"

class CreditcardsTest < ApplicationSystemTestCase
  setup do
    @creditcard = creditcards(:one)
  end

  test "visiting the index" do
    visit creditcards_url
    assert_selector "h1", text: "Creditcards"
  end

  test "creating a Creditcard" do
    visit creditcards_url
    click_on "New Creditcard"

    fill_in "Card num", with: @creditcard.card_num
    fill_in "Cvv", with: @creditcard.cvv
    fill_in "Experation date", with: @creditcard.experation_date
    fill_in "Name", with: @creditcard.name
    click_on "Create Creditcard"

    assert_text "Creditcard was successfully created"
    click_on "Back"
  end

  test "updating a Creditcard" do
    visit creditcards_url
    click_on "Edit", match: :first

    fill_in "Card num", with: @creditcard.card_num
    fill_in "Cvv", with: @creditcard.cvv
    fill_in "Experation date", with: @creditcard.experation_date
    fill_in "Name", with: @creditcard.name
    click_on "Update Creditcard"

    assert_text "Creditcard was successfully updated"
    click_on "Back"
  end

  test "destroying a Creditcard" do
    visit creditcards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Creditcard was successfully destroyed"
  end
end
