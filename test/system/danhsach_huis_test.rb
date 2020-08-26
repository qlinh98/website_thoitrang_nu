require "application_system_test_case"

class DanhsachHuisTest < ApplicationSystemTestCase
  setup do
    @danhsach_hui = danhsach_huis(:one)
  end

  test "visiting the index" do
    visit danhsach_huis_url
    assert_selector "h1", text: "Danhsach Huis"
  end

  test "creating a Danhsach hui" do
    visit danhsach_huis_url
    click_on "New Danhsach Hui"

    fill_in "Dohuuich", with: @danhsach_hui.dohuuich
    fill_in "Taphuuich", with: @danhsach_hui.taphuuich
    click_on "Create Danhsach hui"

    assert_text "Danhsach hui was successfully created"
    click_on "Back"
  end

  test "updating a Danhsach hui" do
    visit danhsach_huis_url
    click_on "Edit", match: :first

    fill_in "Dohuuich", with: @danhsach_hui.dohuuich
    fill_in "Taphuuich", with: @danhsach_hui.taphuuich
    click_on "Update Danhsach hui"

    assert_text "Danhsach hui was successfully updated"
    click_on "Back"
  end

  test "destroying a Danhsach hui" do
    visit danhsach_huis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Danhsach hui was successfully destroyed"
  end
end
