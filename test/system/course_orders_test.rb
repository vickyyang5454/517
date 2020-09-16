require "application_system_test_case"

class CourseOrdersTest < ApplicationSystemTestCase
  setup do
    @course_order = course_orders(:one)
  end

  test "visiting the index" do
    visit course_orders_url
    assert_selector "h1", text: "Course Orders"
  end

  test "creating a Course order" do
    visit course_orders_url
    click_on "New Course Order"

    fill_in "", with: @course_order.
    click_on "Create Course order"

    assert_text "Course order was successfully created"
    click_on "Back"
  end

  test "updating a Course order" do
    visit course_orders_url
    click_on "Edit", match: :first

    fill_in "", with: @course_order.
    click_on "Update Course order"

    assert_text "Course order was successfully updated"
    click_on "Back"
  end

  test "destroying a Course order" do
    visit course_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course order was successfully destroyed"
  end
end
