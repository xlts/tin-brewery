json.array!(@hops) do |hop|
  json.extract! hop, :id, :name, :alpha_acids, :country_id
  json.url hop_url(hop, format: :json)
end
