json.extract! movie_diary, :id, :title, :fact, :date, :created_at, :updated_at
json.url movie_diary_url(movie_diary, format: :json)
