require "application_system_test_case"

class UserDetailsTest < ApplicationSystemTestCase
  setup do
    @user_detail = user_details(:one)
  end

  test "visiting the index" do
    visit user_details_url
    assert_selector "h1", text: "User details"
  end

  test "should create user detail" do
    visit user_details_url
    click_on "New user detail"

    fill_in "Address", with: @user_detail.address
    fill_in "Memo", with: @user_detail.memo
    fill_in "User", with: @user_detail.user_id
    click_on "Create User detail"

    assert_text "User detail was successfully created"
    click_on "Back"
  end

  test "should update User detail" do
    visit user_detail_url(@user_detail)
    click_on "Edit this user detail", match: :first

    fill_in "Address", with: @user_detail.address
    fill_in "Memo", with: @user_detail.memo
    fill_in "User", with: @user_detail.user_id
    click_on "Update User detail"

    assert_text "User detail was successfully updated"
    click_on "Back"
  end

  test "should destroy User detail" do
    visit user_detail_url(@user_detail)
    click_on "Destroy this user detail", match: :first

    assert_text "User detail was successfully destroyed"
  end
end
