require 'test_helper'

class Admin::HostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_hosts_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_hosts_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_hosts_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_hosts_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_hosts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_hosts_destroy_url
    assert_response :success
  end

end
