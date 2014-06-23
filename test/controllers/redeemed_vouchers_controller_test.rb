require 'test_helper'

class RedeemedVouchersControllerTest < ActionController::TestCase
  setup do
    @redeemed_voucher = redeemed_vouchers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:redeemed_vouchers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create redeemed_voucher" do
    assert_difference('RedeemedVoucher.count') do
      post :create, redeemed_voucher: { user_id: @redeemed_voucher.user_id, voucher_id: @redeemed_voucher.voucher_id }
    end

    assert_redirected_to redeemed_voucher_path(assigns(:redeemed_voucher))
  end

  test "should show redeemed_voucher" do
    get :show, id: @redeemed_voucher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @redeemed_voucher
    assert_response :success
  end

  test "should update redeemed_voucher" do
    patch :update, id: @redeemed_voucher, redeemed_voucher: { user_id: @redeemed_voucher.user_id, voucher_id: @redeemed_voucher.voucher_id }
    assert_redirected_to redeemed_voucher_path(assigns(:redeemed_voucher))
  end

  test "should destroy redeemed_voucher" do
    assert_difference('RedeemedVoucher.count', -1) do
      delete :destroy, id: @redeemed_voucher
    end

    assert_redirected_to redeemed_vouchers_path
  end
end
