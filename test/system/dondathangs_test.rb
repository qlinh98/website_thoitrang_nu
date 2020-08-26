require "application_system_test_case"

class DondathangsTest < ApplicationSystemTestCase
  setup do
    @dondathang = dondathangs(:one)
  end

  test "visiting the index" do
    visit dondathangs_url
    assert_selector "h1", text: "Dondathangs"
  end

  test "creating a Dondathang" do
    visit dondathangs_url
    click_on "New Dondathang"

    fill_in "Diachigiao", with: @dondathang.diachigiao
    fill_in "Ghichu", with: @dondathang.ghichu
    fill_in "Giaohang", with: @dondathang.giaohang_id
    fill_in "Ngaydathang", with: @dondathang.ngaydathang
    fill_in "Phuongthuctt", with: @dondathang.phuongthuctt
    fill_in "Sdt", with: @dondathang.sdt
    check "Tinhtrang" if @dondathang.tinhtrang
    fill_in "Tongtien", with: @dondathang.tongtien
    fill_in "User", with: @dondathang.user_id
    click_on "Create Dondathang"

    assert_text "Dondathang was successfully created"
    click_on "Back"
  end

  test "updating a Dondathang" do
    visit dondathangs_url
    click_on "Edit", match: :first

    fill_in "Diachigiao", with: @dondathang.diachigiao
    fill_in "Ghichu", with: @dondathang.ghichu
    fill_in "Giaohang", with: @dondathang.giaohang_id
    fill_in "Ngaydathang", with: @dondathang.ngaydathang
    fill_in "Phuongthuctt", with: @dondathang.phuongthuctt
    fill_in "Sdt", with: @dondathang.sdt
    check "Tinhtrang" if @dondathang.tinhtrang
    fill_in "Tongtien", with: @dondathang.tongtien
    fill_in "User", with: @dondathang.user_id
    click_on "Update Dondathang"

    assert_text "Dondathang was successfully updated"
    click_on "Back"
  end

  test "destroying a Dondathang" do
    visit dondathangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dondathang was successfully destroyed"
  end
end
