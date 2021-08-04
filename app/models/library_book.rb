class LibraryBook < ApplicationRecord
  broadcasts_to ->(_library_book) { 'library_books' }, target: :library_books, inserts_by: :prepend
end
