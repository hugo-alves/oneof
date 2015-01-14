json.array!(@buzzwords) do |buzzword|
  json.extract! buzzword, :id, :title, :url, :industry
  json.url buzzword_url(buzzword, format: :json)
end
