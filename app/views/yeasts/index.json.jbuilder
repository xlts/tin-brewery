json.array!(@yeasts) do |yeast|
  json.extract! yeast, :id, :name, :floc_rate, :country_id
  json.url yeast_url(yeast, format: :json)
end
