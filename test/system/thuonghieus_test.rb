require "application_system_test_case"

class ThuonghieusTest < ApplicationSystemTestCase
  setup do
    @thuonghieu = thuonghieus(:one)
  end

  test "visiting the index" do
    visit thuonghieus_url
    assert_selector "h1", text: "Thuonghieus"
  end

  test "creating a Thuonghieu" do
    visit thuonghieus_url
    click_on "New Thuonghieu"

    fill_in "Diachi", with: @thuonghieu.diachi
    fill_in "Email", with: @thuonghieu.email
    fill_in "Hinhanh", with: @thuonghieu.hinhanh
    fill_in "Tenthuonghieu", with: @thuonghieu.tenthuonghieu
    click_on "Create Thuonghieu"

    assert_text "Thuonghieu was successfully created"
    click_on "Back"
  end

  test "updating a Thuonghieu" do
    visit thuonghieus_url
    click_on "Edit", match: :first

    fill_in "Diachi", with: @thuonghieu.diachi
    fill_in "Email", with: @thuonghieu.email
    fill_in "Hinhanh", with: @thuonghieu.hinhanh
    fill_in "Tenthuonghieu", with: @thuonghieu.tenthuonghieu
    click_on "Update Thuonghieu"

    assert_text "Thuonghieu was successfully updated"
    click_on "Back"
  end

  test "destroying a Thuonghieu" do
    visit thuonghieus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thuonghieu was successfully destroyed"
  end
end
