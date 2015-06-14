require 'test_helper'

class TradeItemsControllerTest < ActionController::TestCase
  setup do
    @trade_item = trade_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trade_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trade_item" do
    assert_difference('TradeItem.count') do
      post :create, trade_item: { item_id: @trade_item.item_id, number: @trade_item.number }
    end

    assert_redirected_to trade_item_path(assigns(:trade_item))
  end

  test "should show trade_item" do
    get :show, id: @trade_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trade_item
    assert_response :success
  end

  test "should update trade_item" do
    patch :update, id: @trade_item, trade_item: { item_id: @trade_item.item_id, number: @trade_item.number }
    assert_redirected_to trade_item_path(assigns(:trade_item))
  end

  test "should destroy trade_item" do
    assert_difference('TradeItem.count', -1) do
      delete :destroy, id: @trade_item
    end

    assert_redirected_to trade_items_path
  end
end
