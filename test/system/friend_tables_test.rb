require "application_system_test_case"

class FriendTablesTest < ApplicationSystemTestCase
  setup do
    @friend_table = friend_tables(:one)
  end

  test "visiting the index" do
    visit friend_tables_url
    assert_selector "h1", text: "Friend Tables"
  end

  test "creating a Friend table" do
    visit friend_tables_url
    click_on "New Friend Table"

    fill_in "Email", with: @friend_table.email
    fill_in "First name", with: @friend_table.first_name
    fill_in "Phone", with: @friend_table.phone
    click_on "Create Friend table"

    assert_text "Friend table was successfully created"
    click_on "Back"
  end

  test "updating a Friend table" do
    visit friend_tables_url
    click_on "Edit", match: :first

    fill_in "Email", with: @friend_table.email
    fill_in "First name", with: @friend_table.first_name
    fill_in "Phone", with: @friend_table.phone
    click_on "Update Friend table"

    assert_text "Friend table was successfully updated"
    click_on "Back"
  end

  test "destroying a Friend table" do
    visit friend_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Friend table was successfully destroyed"
  end
end
