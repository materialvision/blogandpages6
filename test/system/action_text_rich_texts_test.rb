require "application_system_test_case"

class ActionTextRichTextsTest < ApplicationSystemTestCase
  setup do
    @action_text_rich_text = action_text_rich_texts(:one)
  end

  test "visiting the index" do
    visit action_text_rich_texts_url
    assert_selector "h1", text: "Action Text Rich Texts"
  end

  test "creating a Action text rich text" do
    visit action_text_rich_texts_url
    click_on "New Action Text Rich Text"

    fill_in "Body", with: @action_text_rich_text.body
    fill_in "Name", with: @action_text_rich_text.name
    fill_in "Record", with: @action_text_rich_text.record_id
    fill_in "Record type", with: @action_text_rich_text.record_type
    click_on "Create Action text rich text"

    assert_text "Action text rich text was successfully created"
    click_on "Back"
  end

  test "updating a Action text rich text" do
    visit action_text_rich_texts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @action_text_rich_text.body
    fill_in "Name", with: @action_text_rich_text.name
    fill_in "Record", with: @action_text_rich_text.record_id
    fill_in "Record type", with: @action_text_rich_text.record_type
    click_on "Update Action text rich text"

    assert_text "Action text rich text was successfully updated"
    click_on "Back"
  end

  test "destroying a Action text rich text" do
    visit action_text_rich_texts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Action text rich text was successfully destroyed"
  end
end
