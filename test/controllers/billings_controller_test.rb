require 'test_helper'

class BillingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get billings_index_url
    assert_response :success
  end

  test "should get show" do
    get billings_show_url
    assert_response :success
  end

  test "should get new" do
    get billings_new_url
    assert_response :success
  end

  test "should get create" do
    get billings_create_url
    assert_response :success
  end

  test "should get edit" do
    get billings_edit_url
    assert_response :success
  end

  test "should get update" do
    get billings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get billings_destroy_url
    assert_response :success
  end

end
