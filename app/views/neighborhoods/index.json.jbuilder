json.array!(@neighborhoods) do |neighborhood|
  json.extract! neighborhood, :id, :name, :rent, :park, :activities, :architecture, :commute
  json.url neighborhood_url(neighborhood, format: :json)
end
