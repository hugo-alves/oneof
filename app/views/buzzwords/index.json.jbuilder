json.array!(@buzzwords) do |buzzword|
  json.extract! buzzword, :id, :title, :url
  json.url buzzword_url(buzzword, format: :json)
end
