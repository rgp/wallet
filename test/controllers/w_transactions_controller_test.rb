require 'test_helper'

class WTransactionsControllerTest < ActionController::TestCase
  setup do
    @w_transaction = w_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:w_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create w_transaction" do
    assert_difference('WTransaction.count') do
      post :create, w_transaction: { amount: @w_transaction.amount, pocket_id: @w_transaction.pocket_id, type: @w_transaction.type }
    end

    assert_redirected_to w_transaction_path(assigns(:w_transaction))
  end

  test "should show w_transaction" do
    get :show, id: @w_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @w_transaction
    assert_response :success
  end

  test "should update w_transaction" do
    patch :update, id: @w_transaction, w_transaction: { amount: @w_transaction.amount, pocket_id: @w_transaction.pocket_id, type: @w_transaction.type }
    assert_redirected_to w_transaction_path(assigns(:w_transaction))
  end

  test "should destroy w_transaction" do
    assert_difference('WTransaction.count', -1) do
      delete :destroy, id: @w_transaction
    end

    assert_redirected_to w_transactions_path
  end
end
