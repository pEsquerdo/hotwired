require "test_helper"

class LibraryBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @library_book = library_books(:one)
  end

  test "should get index" do
    get library_books_url
    assert_response :success
  end

  test "should get new" do
    get new_library_book_url
    assert_response :success
  end

  test "should create library_book" do
    assert_difference('LibraryBook.count') do
      post library_books_url, params: { library_book: { description: @library_book.description, internal_info: @library_book.internal_info, status: @library_book.status, status_date: @library_book.status_date, title: @library_book.title } }
    end

    assert_redirected_to library_book_url(LibraryBook.last)
  end

  test "should show library_book" do
    get library_book_url(@library_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_library_book_url(@library_book)
    assert_response :success
  end

  test "should update library_book" do
    patch library_book_url(@library_book), params: { library_book: { description: @library_book.description, internal_info: @library_book.internal_info, status: @library_book.status, status_date: @library_book.status_date, title: @library_book.title } }
    assert_redirected_to library_book_url(@library_book)
  end

  test "should destroy library_book" do
    assert_difference('LibraryBook.count', -1) do
      delete library_book_url(@library_book)
    end

    assert_redirected_to library_books_url
  end
end
