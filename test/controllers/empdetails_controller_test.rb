require "test_helper"

class EmpdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empdetail = empdetails(:one)
  end

  test "should get index" do
    get empdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_empdetail_url
    assert_response :success
  end

  test "should create empdetail" do
    assert_difference('Empdetail.count') do
      post empdetails_url, params: { empdetail: { company: @empdetail.company, email: @empdetail.email, first_name: @empdetail.first_name, last_name: @empdetail.last_name, phone: @empdetail.phone, user_id: @empdetail.user_id } }
    end

    assert_redirected_to empdetail_url(Empdetail.last)
  end

  test "should show empdetail" do
    get empdetail_url(@empdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_empdetail_url(@empdetail)
    assert_response :success
  end

  test "should update empdetail" do
    patch empdetail_url(@empdetail), params: { empdetail: { company: @empdetail.company, email: @empdetail.email, first_name: @empdetail.first_name, last_name: @empdetail.last_name, phone: @empdetail.phone, user_id: @empdetail.user_id } }
    assert_redirected_to empdetail_url(@empdetail)
  end

  test "should destroy empdetail" do
    assert_difference('Empdetail.count', -1) do
      delete empdetail_url(@empdetail)
    end

    assert_redirected_to empdetails_url
  end
end
