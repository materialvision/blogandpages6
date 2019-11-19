require 'test_helper'

class ActionTextRichTextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @action_text_rich_text = action_text_rich_texts(:one)
  end

  test "should get index" do
    get action_text_rich_texts_url
    assert_response :success
  end

  test "should get new" do
    get new_action_text_rich_text_url
    assert_response :success
  end

  test "should create action_text_rich_text" do
    assert_difference('ActionTextRichText.count') do
      post action_text_rich_texts_url, params: { action_text_rich_text: { body: @action_text_rich_text.body, name: @action_text_rich_text.name, record_id: @action_text_rich_text.record_id, record_type: @action_text_rich_text.record_type } }
    end

    assert_redirected_to action_text_rich_text_url(ActionTextRichText.last)
  end

  test "should show action_text_rich_text" do
    get action_text_rich_text_url(@action_text_rich_text)
    assert_response :success
  end

  test "should get edit" do
    get edit_action_text_rich_text_url(@action_text_rich_text)
    assert_response :success
  end

  test "should update action_text_rich_text" do
    patch action_text_rich_text_url(@action_text_rich_text), params: { action_text_rich_text: { body: @action_text_rich_text.body, name: @action_text_rich_text.name, record_id: @action_text_rich_text.record_id, record_type: @action_text_rich_text.record_type } }
    assert_redirected_to action_text_rich_text_url(@action_text_rich_text)
  end

  test "should destroy action_text_rich_text" do
    assert_difference('ActionTextRichText.count', -1) do
      delete action_text_rich_text_url(@action_text_rich_text)
    end

    assert_redirected_to action_text_rich_texts_url
  end
end
