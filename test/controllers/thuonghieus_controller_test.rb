require 'test_helper'

class ThuonghieusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thuonghieu = thuonghieus(:one)
  end

  test "should get index" do
    get thuonghieus_url
    assert_response :success
  end

  test "should get new" do
    get new_thuonghieu_url
    assert_response :success
  end

  test "should create thuonghieu" do
    assert_difference('Thuonghieu.count') do
      post thuonghieus_url, params: { thuonghieu: { diachi: @thuonghieu.diachi, email: @thuonghieu.email, hinhanh: @thuonghieu.hinhanh, tenthuonghieu: @thuonghieu.tenthuonghieu } }
    end

    assert_redirected_to thuonghieu_url(Thuonghieu.last)
  end

  test "should show thuonghieu" do
    get thuonghieu_url(@thuonghieu)
    assert_response :success
  end

  test "should get edit" do
    get edit_thuonghieu_url(@thuonghieu)
    assert_response :success
  end

  test "should update thuonghieu" do
    patch thuonghieu_url(@thuonghieu), params: { thuonghieu: { diachi: @thuonghieu.diachi, email: @thuonghieu.email, hinhanh: @thuonghieu.hinhanh, tenthuonghieu: @thuonghieu.tenthuonghieu } }
    assert_redirected_to thuonghieu_url(@thuonghieu)
  end

  test "should destroy thuonghieu" do
    assert_difference('Thuonghieu.count', -1) do
      delete thuonghieu_url(@thuonghieu)
    end

    assert_redirected_to thuonghieus_url
  end
end
