require 'test_helper'

class LoaisanphamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loaisanpham = loaisanphams(:one)
  end

  test "should get index" do
    get loaisanphams_url
    assert_response :success
  end

  test "should get new" do
    get new_loaisanpham_url
    assert_response :success
  end

  test "should create loaisanpham" do
    assert_difference('Loaisanpham.count') do
      post loaisanphams_url, params: { loaisanpham: { danhmuc_id: @loaisanpham.danhmuc_id, tenloai: @loaisanpham.tenloai } }
    end

    assert_redirected_to loaisanpham_url(Loaisanpham.last)
  end

  test "should show loaisanpham" do
    get loaisanpham_url(@loaisanpham)
    assert_response :success
  end

  test "should get edit" do
    get edit_loaisanpham_url(@loaisanpham)
    assert_response :success
  end

  test "should update loaisanpham" do
    patch loaisanpham_url(@loaisanpham), params: { loaisanpham: { danhmuc_id: @loaisanpham.danhmuc_id, tenloai: @loaisanpham.tenloai } }
    assert_redirected_to loaisanpham_url(@loaisanpham)
  end

  test "should destroy loaisanpham" do
    assert_difference('Loaisanpham.count', -1) do
      delete loaisanpham_url(@loaisanpham)
    end

    assert_redirected_to loaisanphams_url
  end
end
