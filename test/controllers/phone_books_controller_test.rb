require 'test_helper'

class PhoneBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phone_book = phone_books(:one)
  end

  test "should get index" do
    get phone_books_url
    assert_response :success
  end

  test "should get new" do
    get new_phone_book_url
    assert_response :success
  end

  test "should create phone_book" do
    assert_difference('PhoneBook.count') do
      post phone_books_url, params: { phone_book: { title: "Another Phone Book" } }
    end

    assert_redirected_to phone_book_url(PhoneBook.last)
  end

  test "should show phone_book" do
    get phone_book_url(@phone_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_phone_book_url(@phone_book)
    assert_response :success
  end

  test "should update phone_book" do
    patch phone_book_url(@phone_book), params: { phone_book: { title: "New Name" } }
    assert_redirected_to phone_book_url(@phone_book)
  end

  test "should destroy phone_book" do
    assert_difference('PhoneBook.count', -1) do
      delete phone_book_url(@phone_book)
    end

    assert_redirected_to phone_books_url
  end
end
