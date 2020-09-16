require 'test_helper'

class ContactInfomationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_infomation = contact_infomations(:one)
  end

  test "should get index" do
    get contact_infomations_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_infomation_url
    assert_response :success
  end

  test "should create contact_infomation" do
    assert_difference('ContactInfomation.count') do
      post contact_infomations_url, params: { contact_infomation: { address: @contact_infomation.address, email: @contact_infomation.email, name: @contact_infomation.name, password: @contact_infomation.password, phone_num: @contact_infomation.phone_num, user_type: @contact_infomation.user_type } }
    end

    assert_redirected_to contact_infomation_url(ContactInfomation.last)
  end

  test "should show contact_infomation" do
    get contact_infomation_url(@contact_infomation)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_infomation_url(@contact_infomation)
    assert_response :success
  end

  test "should update contact_infomation" do
    patch contact_infomation_url(@contact_infomation), params: { contact_infomation: { address: @contact_infomation.address, email: @contact_infomation.email, name: @contact_infomation.name, password: @contact_infomation.password, phone_num: @contact_infomation.phone_num, user_type: @contact_infomation.user_type } }
    assert_redirected_to contact_infomation_url(@contact_infomation)
  end

  test "should destroy contact_infomation" do
    assert_difference('ContactInfomation.count', -1) do
      delete contact_infomation_url(@contact_infomation)
    end

    assert_redirected_to contact_infomations_url
  end
end
