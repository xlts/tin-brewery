json.array!(@malts) do |malt|
  json.extract! malt, :id, :name, :ebc, :country_id
  json.url malt_url(malt, format: :json)
end
