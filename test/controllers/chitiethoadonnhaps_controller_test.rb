require 'test_helper'

class ChitiethoadonnhapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chitiethoadonnhap = chitiethoadonnhaps(:one)
  end

  test "should get index" do
    get chitiethoadonnhaps_url
    assert_response :success
  end

  test "should get new" do
    get new_chitiethoadonnhap_url
    assert_response :success
  end

  test "should create chitiethoadonnhap" do
    assert_difference('Chitiethoadonnhap.count') do
      post chitiethoadonnhaps_url, params: { chitiethoadonnhap: { chitietsanpham_id: @chitiethoadonnhap.chitietsanpham_id, dongia: @chitiethoadonnhap.dongia, hoadonnhap_id: @chitiethoadonnhap.hoadonnhap_id, soluongnhap: @chitiethoadonnhap.soluongnhap } }
    end

    assert_redirected_to chitiethoadonnhap_url(Chitiethoadonnhap.last)
  end

  test "should show chitiethoadonnhap" do
    get chitiethoadonnhap_url(@chitiethoadonnhap)
    assert_response :success
  end

  test "should get edit" do
    get edit_chitiethoadonnhap_url(@chitiethoadonnhap)
    assert_response :success
  end

  test "should update chitiethoadonnhap" do
    patch chitiethoadonnhap_url(@chitiethoadonnhap), params: { chitiethoadonnhap: { chitietsanpham_id: @chitiethoadonnhap.chitietsanpham_id, dongia: @chitiethoadonnhap.dongia, hoadonnhap_id: @chitiethoadonnhap.hoadonnhap_id, soluongnhap: @chitiethoadonnhap.soluongnhap } }
    assert_redirected_to chitiethoadonnhap_url(@chitiethoadonnhap)
  end

  test "should destroy chitiethoadonnhap" do
    assert_difference('Chitiethoadonnhap.count', -1) do
      delete chitiethoadonnhap_url(@chitiethoadonnhap)
    end

    assert_redirected_to chitiethoadonnhaps_url
  end
end
