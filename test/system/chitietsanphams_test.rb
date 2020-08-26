require "application_system_test_case"

class ChitietsanphamsTest < ApplicationSystemTestCase
  setup do
    @chitietsanpham = chitietsanphams(:one)
  end

  test "visiting the index" do
    visit chitietsanphams_url
    assert_selector "h1", text: "Chitietsanphams"
  end

  test "creating a Chitietsanpham" do
    visit chitietsanphams_url
    click_on "New Chitietsanpham"

    fill_in "Giaban", with: @chitietsanpham.giaban
    fill_in "Hinh1", with: @chitietsanpham.hinh1
    fill_in "Hinh2", with: @chitietsanpham.hinh2
    fill_in "Hinh3", with: @chitietsanpham.hinh3
    fill_in "Hinh4", with: @chitietsanpham.hinh4
    fill_in "Mausp", with: @chitietsanpham.mausp
    fill_in "Sanpham", with: @chitietsanpham.sanpham_id
    fill_in "Size", with: @chitietsanpham.size
    fill_in "Soluongton", with: @chitietsanpham.soluongton
    click_on "Create Chitietsanpham"

    assert_text "Chitietsanpham was successfully created"
    click_on "Back"
  end

  test "updating a Chitietsanpham" do
    visit chitietsanphams_url
    click_on "Edit", match: :first

    fill_in "Giaban", with: @chitietsanpham.giaban
    fill_in "Hinh1", with: @chitietsanpham.hinh1
    fill_in "Hinh2", with: @chitietsanpham.hinh2
    fill_in "Hinh3", with: @chitietsanpham.hinh3
    fill_in "Hinh4", with: @chitietsanpham.hinh4
    fill_in "Mausp", with: @chitietsanpham.mausp
    fill_in "Sanpham", with: @chitietsanpham.sanpham_id
    fill_in "Size", with: @chitietsanpham.size
    fill_in "Soluongton", with: @chitietsanpham.soluongton
    click_on "Update Chitietsanpham"

    assert_text "Chitietsanpham was successfully updated"
    click_on "Back"
  end

  test "destroying a Chitietsanpham" do
    visit chitietsanphams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chitietsanpham was successfully destroyed"
  end
end
