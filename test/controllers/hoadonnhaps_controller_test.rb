require 'test_helper'

class HoadonnhapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hoadonnhap = hoadonnhaps(:one)
  end

  test "should get index" do
    get hoadonnhaps_url
    assert_response :success
  end

  test "should get new" do
    get new_hoadonnhap_url
    assert_response :success
  end

  test "should create hoadonnhap" do
    assert_difference('Hoadonnhap.count') do
      post hoadonnhaps_url, params: { hoadonnhap: { ngaynhap: @hoadonnhap.ngaynhap, nhacungcap_id: @hoadonnhap.nhacungcap_id, tongtien: @hoadonnhap.tongtien } }
    end

    assert_redirected_to hoadonnhap_url(Hoadonnhap.last)
  end

  test "should show hoadonnhap" do
    get hoadonnhap_url(@hoadonnhap)
    assert_response :success
  end

  test "should get edit" do
    get edit_hoadonnhap_url(@hoadonnhap)
    assert_response :success
  end

  test "should update hoadonnhap" do
    patch hoadonnhap_url(@hoadonnhap), params: { hoadonnhap: { ngaynhap: @hoadonnhap.ngaynhap, nhacungcap_id: @hoadonnhap.nhacungcap_id, tongtien: @hoadonnhap.tongtien } }
    assert_redirected_to hoadonnhap_url(@hoadonnhap)
  end

  test "should destroy hoadonnhap" do
    assert_difference('Hoadonnhap.count', -1) do
      delete hoadonnhap_url(@hoadonnhap)
    end

    assert_redirected_to hoadonnhaps_url
  end
end
