require "application_system_test_case"

class ChitietDathangsTest < ApplicationSystemTestCase
  setup do
    @chitiet_dathang = chitiet_dathangs(:one)
  end

  test "visiting the index" do
    visit chitiet_dathangs_url
    assert_selector "h1", text: "Chitiet Dathangs"
  end

  test "creating a Chitiet dathang" do
    visit chitiet_dathangs_url
    click_on "New Chitiet Dathang"

    fill_in "Cart", with: @chitiet_dathang.cart_id
    fill_in "Chitietsanpham", with: @chitiet_dathang.chitietsanpham_id
    fill_in "Dondathang", with: @chitiet_dathang.dondathang_id
    fill_in "Dongia", with: @chitiet_dathang.dongia
    fill_in "Soluong", with: @chitiet_dathang.soluong
    fill_in "Thanhtien", with: @chitiet_dathang.thanhtien
    click_on "Create Chitiet dathang"

    assert_text "Chitiet dathang was successfully created"
    click_on "Back"
  end

  test "updating a Chitiet dathang" do
    visit chitiet_dathangs_url
    click_on "Edit", match: :first

    fill_in "Cart", with: @chitiet_dathang.cart_id
    fill_in "Chitietsanpham", with: @chitiet_dathang.chitietsanpham_id
    fill_in "Dondathang", with: @chitiet_dathang.dondathang_id
    fill_in "Dongia", with: @chitiet_dathang.dongia
    fill_in "Soluong", with: @chitiet_dathang.soluong
    fill_in "Thanhtien", with: @chitiet_dathang.thanhtien
    click_on "Update Chitiet dathang"

    assert_text "Chitiet dathang was successfully updated"
    click_on "Back"
  end

  test "destroying a Chitiet dathang" do
    visit chitiet_dathangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chitiet dathang was successfully destroyed"
  end
end
