require 'test_helper'

class TeachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teachment = teachments(:one)
  end

  test "should get index" do
    get teachments_url
    assert_response :success
  end

  test "should get new" do
    get new_teachment_url
    assert_response :success
  end

  test "should create teachment" do
    assert_difference('Teachment.count') do
      post teachments_url, params: { teachment: {  } }
    end

    assert_redirected_to teachment_url(Teachment.last)
  end

  test "should show teachment" do
    get teachment_url(@teachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_teachment_url(@teachment)
    assert_response :success
  end

  test "should update teachment" do
    patch teachment_url(@teachment), params: { teachment: {  } }
    assert_redirected_to teachment_url(@teachment)
  end

  test "should destroy teachment" do
    assert_difference('Teachment.count', -1) do
      delete teachment_url(@teachment)
    end

    assert_redirected_to teachments_url
  end
end
