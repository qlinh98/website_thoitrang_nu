require "application_system_test_case"

class ChitiethoadonnhapsTest < ApplicationSystemTestCase
  setup do
    @chitiethoadonnhap = chitiethoadonnhaps(:one)
  end

  test "visiting the index" do
    visit chitiethoadonnhaps_url
    assert_selector "h1", text: "Chitiethoadonnhaps"
  end

  test "creating a Chitiethoadonnhap" do
    visit chitiethoadonnhaps_url
    click_on "New Chitiethoadonnhap"

    fill_in "Chitietsanpham", with: @chitiethoadonnhap.chitietsanpham_id
    fill_in "Dongia", with: @chitiethoadonnhap.dongia
    fill_in "Hoadonnhap", with: @chitiethoadonnhap.hoadonnhap_id
    fill_in "Soluongnhap", with: @chitiethoadonnhap.soluongnhap
    click_on "Create Chitiethoadonnhap"

    assert_text "Chitiethoadonnhap was successfully created"
    click_on "Back"
  end

  test "updating a Chitiethoadonnhap" do
    visit chitiethoadonnhaps_url
    click_on "Edit", match: :first

    fill_in "Chitietsanpham", with: @chitiethoadonnhap.chitietsanpham_id
    fill_in "Dongia", with: @chitiethoadonnhap.dongia
    fill_in "Hoadonnhap", with: @chitiethoadonnhap.hoadonnhap_id
    fill_in "Soluongnhap", with: @chitiethoadonnhap.soluongnhap
    click_on "Update Chitiethoadonnhap"

    assert_text "Chitiethoadonnhap was successfully updated"
    click_on "Back"
  end

  test "destroying a Chitiethoadonnhap" do
    visit chitiethoadonnhaps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chitiethoadonnhap was successfully destroyed"
  end
end
