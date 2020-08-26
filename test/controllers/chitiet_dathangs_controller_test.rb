require 'test_helper'

class ChitietDathangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chitiet_dathang = chitiet_dathangs(:one)
  end

  test "should get index" do
    get chitiet_dathangs_url
    assert_response :success
  end

  test "should get new" do
    get new_chitiet_dathang_url
    assert_response :success
  end

  test "should create chitiet_dathang" do
    assert_difference('ChitietDathang.count') do
      post chitiet_dathangs_url, params: { chitiet_dathang: { cart_id: @chitiet_dathang.cart_id, chitietsanpham_id: @chitiet_dathang.chitietsanpham_id, dondathang_id: @chitiet_dathang.dondathang_id, dongia: @chitiet_dathang.dongia, soluong: @chitiet_dathang.soluong, thanhtien: @chitiet_dathang.thanhtien } }
    end

    assert_redirected_to chitiet_dathang_url(ChitietDathang.last)
  end

  test "should show chitiet_dathang" do
    get chitiet_dathang_url(@chitiet_dathang)
    assert_response :success
  end

  test "should get edit" do
    get edit_chitiet_dathang_url(@chitiet_dathang)
    assert_response :success
  end

  test "should update chitiet_dathang" do
    patch chitiet_dathang_url(@chitiet_dathang), params: { chitiet_dathang: { cart_id: @chitiet_dathang.cart_id, chitietsanpham_id: @chitiet_dathang.chitietsanpham_id, dondathang_id: @chitiet_dathang.dondathang_id, dongia: @chitiet_dathang.dongia, soluong: @chitiet_dathang.soluong, thanhtien: @chitiet_dathang.thanhtien } }
    assert_redirected_to chitiet_dathang_url(@chitiet_dathang)
  end

  test "should destroy chitiet_dathang" do
    assert_difference('ChitietDathang.count', -1) do
      delete chitiet_dathang_url(@chitiet_dathang)
    end

    assert_redirected_to chitiet_dathangs_url
  end
end
