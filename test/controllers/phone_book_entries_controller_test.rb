require 'test_helper'

class PhoneBookEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phone_book_entry = phone_book_entries(:one)
  end

  test "should get new" do
    get new_phone_book_entry_url
    assert_response :success
  end

  test "should create phone_book_entry" do
    assert_difference('PhoneBookEntry.count') do
      post phone_book_entries_url, params: { phone_book_entry: { name: @phone_book_entry.name, phone_book_id: @phone_book_entry.phone_book_id, phone_office: @phone_book_entry.phone_office } }
    end

    assert_redirected_to phone_book_entry_url(PhoneBookEntry.last)
  end

  test "should show phone_book_entry" do
    get phone_book_entry_url(@phone_book_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_phone_book_entry_url(@phone_book_entry)
    assert_response :success
  end

  test "should update phone_book_entry" do
    patch phone_book_entry_url(@phone_book_entry), params: { phone_book_entry: { name: "Changed my Name", phone_book_id: @phone_book_entry.phone_book_id, phone_mobile: @phone_book_entry.phone_mobile } }
    assert_redirected_to phone_book_entry_url(@phone_book_entry)
  end

  test "should destroy phone_book_entry" do
    assert_difference('PhoneBookEntry.count', -1) do
      delete phone_book_entry_url(@phone_book_entry)
    end

    assert_redirected_to phone_book_entries_url
  end
end
