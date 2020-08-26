require 'test_helper'

class NhacungcapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nhacungcap = nhacungcaps(:one)
  end

  test "should get index" do
    get nhacungcaps_url
    assert_response :success
  end

  test "should get new" do
    get new_nhacungcap_url
    assert_response :success
  end

  test "should create nhacungcap" do
    assert_difference('Nhacungcap.count') do
      post nhacungcaps_url, params: { nhacungcap: { diachi: @nhacungcap.diachi, email: @nhacungcap.email, sdt: @nhacungcap.sdt, tenncc: @nhacungcap.tenncc } }
    end

    assert_redirected_to nhacungcap_url(Nhacungcap.last)
  end

  test "should show nhacungcap" do
    get nhacungcap_url(@nhacungcap)
    assert_response :success
  end

  test "should get edit" do
    get edit_nhacungcap_url(@nhacungcap)
    assert_response :success
  end

  test "should update nhacungcap" do
    patch nhacungcap_url(@nhacungcap), params: { nhacungcap: { diachi: @nhacungcap.diachi, email: @nhacungcap.email, sdt: @nhacungcap.sdt, tenncc: @nhacungcap.tenncc } }
    assert_redirected_to nhacungcap_url(@nhacungcap)
  end

  test "should destroy nhacungcap" do
    assert_difference('Nhacungcap.count', -1) do
      delete nhacungcap_url(@nhacungcap)
    end

    assert_redirected_to nhacungcaps_url
  end
end
