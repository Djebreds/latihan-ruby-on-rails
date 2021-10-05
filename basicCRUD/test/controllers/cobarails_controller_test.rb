require "test_helper"

class CobarailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cobarail = cobarails(:one)
  end

  test "should get index" do
    get cobarails_url
    assert_response :success
  end

  test "should get new" do
    get new_cobarail_url
    assert_response :success
  end

  test "should create cobarail" do
    assert_difference('Cobarail.count') do
      post cobarails_url, params: { cobarail: { email: @cobarail.email, first_name: @cobarail.first_name, last_name: @cobarail.last_name, phone: @cobarail.phone, twitter: @cobarail.twitter } }
    end

    assert_redirected_to cobarail_url(Cobarail.last)
  end

  test "should show cobarail" do
    get cobarail_url(@cobarail)
    assert_response :success
  end

  test "should get edit" do
    get edit_cobarail_url(@cobarail)
    assert_response :success
  end

  test "should update cobarail" do
    patch cobarail_url(@cobarail), params: { cobarail: { email: @cobarail.email, first_name: @cobarail.first_name, last_name: @cobarail.last_name, phone: @cobarail.phone, twitter: @cobarail.twitter } }
    assert_redirected_to cobarail_url(@cobarail)
  end

  test "should destroy cobarail" do
    assert_difference('Cobarail.count', -1) do
      delete cobarail_url(@cobarail)
    end

    assert_redirected_to cobarails_url
  end
end
