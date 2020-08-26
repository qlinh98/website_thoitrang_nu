require 'test_helper'

class DanhsachHuisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @danhsach_hui = danhsach_huis(:one)
  end

  test "should get index" do
    get danhsach_huis_url
    assert_response :success
  end

  test "should get new" do
    get new_danhsach_hui_url
    assert_response :success
  end

  test "should create danhsach_hui" do
    assert_difference('DanhsachHui.count') do
      post danhsach_huis_url, params: { danhsach_hui: { dohuuich: @danhsach_hui.dohuuich, taphuuich: @danhsach_hui.taphuuich } }
    end

    assert_redirected_to danhsach_hui_url(DanhsachHui.last)
  end

  test "should show danhsach_hui" do
    get danhsach_hui_url(@danhsach_hui)
    assert_response :success
  end

  test "should get edit" do
    get edit_danhsach_hui_url(@danhsach_hui)
    assert_response :success
  end

  test "should update danhsach_hui" do
    patch danhsach_hui_url(@danhsach_hui), params: { danhsach_hui: { dohuuich: @danhsach_hui.dohuuich, taphuuich: @danhsach_hui.taphuuich } }
    assert_redirected_to danhsach_hui_url(@danhsach_hui)
  end

  test "should destroy danhsach_hui" do
    assert_difference('DanhsachHui.count', -1) do
      delete danhsach_hui_url(@danhsach_hui)
    end

    assert_redirected_to danhsach_huis_url
  end
end
