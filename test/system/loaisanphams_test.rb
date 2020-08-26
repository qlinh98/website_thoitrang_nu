require "application_system_test_case"

class LoaisanphamsTest < ApplicationSystemTestCase
  setup do
    @loaisanpham = loaisanphams(:one)
  end

  test "visiting the index" do
    visit loaisanphams_url
    assert_selector "h1", text: "Loaisanphams"
  end

  test "creating a Loaisanpham" do
    visit loaisanphams_url
    click_on "New Loaisanpham"

    fill_in "Danhmuc", with: @loaisanpham.danhmuc_id
    fill_in "Tenloai", with: @loaisanpham.tenloai
    click_on "Create Loaisanpham"

    assert_text "Loaisanpham was successfully created"
    click_on "Back"
  end

  test "updating a Loaisanpham" do
    visit loaisanphams_url
    click_on "Edit", match: :first

    fill_in "Danhmuc", with: @loaisanpham.danhmuc_id
    fill_in "Tenloai", with: @loaisanpham.tenloai
    click_on "Update Loaisanpham"

    assert_text "Loaisanpham was successfully updated"
    click_on "Back"
  end

  test "destroying a Loaisanpham" do
    visit loaisanphams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loaisanpham was successfully destroyed"
  end
end
