json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :rating, :synopsis, :duration, :is_3d
  json.url movie_url(movie, format: :json)
end
