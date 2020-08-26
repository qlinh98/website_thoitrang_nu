require 'test_helper'

class ChitietsanphamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chitietsanpham = chitietsanphams(:one)
  end

  test "should get index" do
    get chitietsanphams_url
    assert_response :success
  end

  test "should get new" do
    get new_chitietsanpham_url
    assert_response :success
  end

  test "should create chitietsanpham" do
    assert_difference('Chitietsanpham.count') do
      post chitietsanphams_url, params: { chitietsanpham: { giaban: @chitietsanpham.giaban, hinh1: @chitietsanpham.hinh1, hinh2: @chitietsanpham.hinh2, hinh3: @chitietsanpham.hinh3, hinh4: @chitietsanpham.hinh4, mausp: @chitietsanpham.mausp, sanpham_id: @chitietsanpham.sanpham_id, size: @chitietsanpham.size, soluongton: @chitietsanpham.soluongton } }
    end

    assert_redirected_to chitietsanpham_url(Chitietsanpham.last)
  end

  test "should show chitietsanpham" do
    get chitietsanpham_url(@chitietsanpham)
    assert_response :success
  end

  test "should get edit" do
    get edit_chitietsanpham_url(@chitietsanpham)
    assert_response :success
  end

  test "should update chitietsanpham" do
    patch chitietsanpham_url(@chitietsanpham), params: { chitietsanpham: { giaban: @chitietsanpham.giaban, hinh1: @chitietsanpham.hinh1, hinh2: @chitietsanpham.hinh2, hinh3: @chitietsanpham.hinh3, hinh4: @chitietsanpham.hinh4, mausp: @chitietsanpham.mausp, sanpham_id: @chitietsanpham.sanpham_id, size: @chitietsanpham.size, soluongton: @chitietsanpham.soluongton } }
    assert_redirected_to chitietsanpham_url(@chitietsanpham)
  end

  test "should destroy chitietsanpham" do
    assert_difference('Chitietsanpham.count', -1) do
      delete chitietsanpham_url(@chitietsanpham)
    end

    assert_redirected_to chitietsanphams_url
  end
end
