json.array!(@beers) do |beer|
  json.extract! beer, :id, :name, :abv, :malt_id, :hop_id, :yeast_id
  json.url beer_url(beer, format: :json)
end
