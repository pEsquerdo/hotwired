require "application_system_test_case"

class LibraryBooksTest < ApplicationSystemTestCase
  setup do
    @library_book = library_books(:one)
  end

  test "visiting the index" do
    visit library_books_url
    assert_selector "h1", text: "Library Books"
  end

  test "creating a Library book" do
    visit library_books_url
    click_on "New Library Book"

    fill_in "Description", with: @library_book.description
    fill_in "Internal info", with: @library_book.internal_info
    fill_in "Status", with: @library_book.status
    fill_in "Status date", with: @library_book.status_date
    fill_in "Title", with: @library_book.title
    click_on "Create Library book"

    assert_text "Library book was successfully created"
    click_on "Back"
  end

  test "updating a Library book" do
    visit library_books_url
    click_on "Edit", match: :first

    fill_in "Description", with: @library_book.description
    fill_in "Internal info", with: @library_book.internal_info
    fill_in "Status", with: @library_book.status
    fill_in "Status date", with: @library_book.status_date
    fill_in "Title", with: @library_book.title
    click_on "Update Library book"

    assert_text "Library book was successfully updated"
    click_on "Back"
  end

  test "destroying a Library book" do
    visit library_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Library book was successfully destroyed"
  end
end
