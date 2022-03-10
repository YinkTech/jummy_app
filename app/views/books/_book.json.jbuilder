json.extract! book, :id, :first_name, :last_name, :email, :created_at, :updated_at
json.url book_url(book, format: :json)
