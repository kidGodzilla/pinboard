require 'test_helper'

class SavedItemsControllerTest < ActionController::TestCase
  setup do
    @saved_item = saved_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saved_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saved_item" do
    assert_difference('SavedItem.count') do
      post :create, saved_item: { item_id: @saved_item.item_id }
    end

    assert_redirected_to saved_item_path(assigns(:saved_item))
  end

  test "should show saved_item" do
    get :show, id: @saved_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saved_item
    assert_response :success
  end

  test "should update saved_item" do
    patch :update, id: @saved_item, saved_item: { item_id: @saved_item.item_id }
    assert_redirected_to saved_item_path(assigns(:saved_item))
  end

  test "should destroy saved_item" do
    assert_difference('SavedItem.count', -1) do
      delete :destroy, id: @saved_item
    end

    assert_redirected_to saved_items_path
  end
end
