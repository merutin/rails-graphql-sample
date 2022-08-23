require "application_system_test_case"

class MicropostDetailsTest < ApplicationSystemTestCase
  setup do
    @micropost_detail = micropost_details(:one)
  end

  test "visiting the index" do
    visit micropost_details_url
    assert_selector "h1", text: "Micropost details"
  end

  test "should create micropost detail" do
    visit micropost_details_url
    click_on "New micropost detail"

    fill_in "Content", with: @micropost_detail.content
    fill_in "Micropost", with: @micropost_detail.micropost_id
    click_on "Create Micropost detail"

    assert_text "Micropost detail was successfully created"
    click_on "Back"
  end

  test "should update Micropost detail" do
    visit micropost_detail_url(@micropost_detail)
    click_on "Edit this micropost detail", match: :first

    fill_in "Content", with: @micropost_detail.content
    fill_in "Micropost", with: @micropost_detail.micropost_id
    click_on "Update Micropost detail"

    assert_text "Micropost detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Micropost detail" do
    visit micropost_detail_url(@micropost_detail)
    click_on "Destroy this micropost detail", match: :first

    assert_text "Micropost detail was successfully destroyed"
  end
end
