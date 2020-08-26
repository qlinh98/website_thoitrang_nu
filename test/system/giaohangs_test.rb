require "application_system_test_case"

class GiaohangsTest < ApplicationSystemTestCase
  setup do
    @giaohang = giaohangs(:one)
  end

  test "visiting the index" do
    visit giaohangs_url
    assert_selector "h1", text: "Giaohangs"
  end

  test "creating a Giaohang" do
    visit giaohangs_url
    click_on "New Giaohang"

    fill_in "Ghichu", with: @giaohang.ghichu
    fill_in "Ngaygiao", with: @giaohang.ngaygiao
    check "Tinhtrang" if @giaohang.tinhtrang
    click_on "Create Giaohang"

    assert_text "Giaohang was successfully created"
    click_on "Back"
  end

  test "updating a Giaohang" do
    visit giaohangs_url
    click_on "Edit", match: :first

    fill_in "Ghichu", with: @giaohang.ghichu
    fill_in "Ngaygiao", with: @giaohang.ngaygiao
    check "Tinhtrang" if @giaohang.tinhtrang
    click_on "Update Giaohang"

    assert_text "Giaohang was successfully updated"
    click_on "Back"
  end

  test "destroying a Giaohang" do
    visit giaohangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Giaohang was successfully destroyed"
  end
end
