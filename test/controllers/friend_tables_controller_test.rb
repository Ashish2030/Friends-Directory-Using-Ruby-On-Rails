require "test_helper"

class FriendTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friend_table = friend_tables(:one)
  end

  test "should get index" do
    get friend_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_friend_table_url
    assert_response :success
  end

  test "should create friend_table" do
    assert_difference('FriendTable.count') do
      post friend_tables_url, params: { friend_table: { email: @friend_table.email, first_name: @friend_table.first_name, phone: @friend_table.phone } }
    end

    assert_redirected_to friend_table_url(FriendTable.last)
  end

  test "should show friend_table" do
    get friend_table_url(@friend_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_friend_table_url(@friend_table)
    assert_response :success
  end

  test "should update friend_table" do
    patch friend_table_url(@friend_table), params: { friend_table: { email: @friend_table.email, first_name: @friend_table.first_name, phone: @friend_table.phone } }
    assert_redirected_to friend_table_url(@friend_table)
  end

  test "should destroy friend_table" do
    assert_difference('FriendTable.count', -1) do
      delete friend_table_url(@friend_table)
    end

    assert_redirected_to friend_tables_url
  end
end
