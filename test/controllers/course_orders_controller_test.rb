require 'test_helper'

class CourseOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_order = course_orders(:one)
  end

  test "should get index" do
    get course_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_course_order_url
    assert_response :success
  end

  test "should create course_order" do
    assert_difference('CourseOrder.count') do
      post course_orders_url, params: { course_order: { : @course_order. } }
    end

    assert_redirected_to course_order_url(CourseOrder.last)
  end

  test "should show course_order" do
    get course_order_url(@course_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_order_url(@course_order)
    assert_response :success
  end

  test "should update course_order" do
    patch course_order_url(@course_order), params: { course_order: { : @course_order. } }
    assert_redirected_to course_order_url(@course_order)
  end

  test "should destroy course_order" do
    assert_difference('CourseOrder.count', -1) do
      delete course_order_url(@course_order)
    end

    assert_redirected_to course_orders_url
  end
end
