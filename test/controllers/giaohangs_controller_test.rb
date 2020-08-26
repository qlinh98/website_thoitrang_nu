require 'test_helper'

class GiaohangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @giaohang = giaohangs(:one)
  end

  test "should get index" do
    get giaohangs_url
    assert_response :success
  end

  test "should get new" do
    get new_giaohang_url
    assert_response :success
  end

  test "should create giaohang" do
    assert_difference('Giaohang.count') do
      post giaohangs_url, params: { giaohang: { ghichu: @giaohang.ghichu, ngaygiao: @giaohang.ngaygiao, tinhtrang: @giaohang.tinhtrang } }
    end

    assert_redirected_to giaohang_url(Giaohang.last)
  end

  test "should show giaohang" do
    get giaohang_url(@giaohang)
    assert_response :success
  end

  test "should get edit" do
    get edit_giaohang_url(@giaohang)
    assert_response :success
  end

  test "should update giaohang" do
    patch giaohang_url(@giaohang), params: { giaohang: { ghichu: @giaohang.ghichu, ngaygiao: @giaohang.ngaygiao, tinhtrang: @giaohang.tinhtrang } }
    assert_redirected_to giaohang_url(@giaohang)
  end

  test "should destroy giaohang" do
    assert_difference('Giaohang.count', -1) do
      delete giaohang_url(@giaohang)
    end

    assert_redirected_to giaohangs_url
  end
end
