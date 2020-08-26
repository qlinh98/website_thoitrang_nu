require "application_system_test_case"

class HoadonnhapsTest < ApplicationSystemTestCase
  setup do
    @hoadonnhap = hoadonnhaps(:one)
  end

  test "visiting the index" do
    visit hoadonnhaps_url
    assert_selector "h1", text: "Hoadonnhaps"
  end

  test "creating a Hoadonnhap" do
    visit hoadonnhaps_url
    click_on "New Hoadonnhap"

    fill_in "Ngaynhap", with: @hoadonnhap.ngaynhap
    fill_in "Nhacungcap", with: @hoadonnhap.nhacungcap_id
    fill_in "Tongtien", with: @hoadonnhap.tongtien
    click_on "Create Hoadonnhap"

    assert_text "Hoadonnhap was successfully created"
    click_on "Back"
  end

  test "updating a Hoadonnhap" do
    visit hoadonnhaps_url
    click_on "Edit", match: :first

    fill_in "Ngaynhap", with: @hoadonnhap.ngaynhap
    fill_in "Nhacungcap", with: @hoadonnhap.nhacungcap_id
    fill_in "Tongtien", with: @hoadonnhap.tongtien
    click_on "Update Hoadonnhap"

    assert_text "Hoadonnhap was successfully updated"
    click_on "Back"
  end

  test "destroying a Hoadonnhap" do
    visit hoadonnhaps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hoadonnhap was successfully destroyed"
  end
end
