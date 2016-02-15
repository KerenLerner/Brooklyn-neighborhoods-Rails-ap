json.array!(@seekers) do |seeker|
  json.extract! seeker, :id, :seeker_name, :seeker_rent, :seeker_park, :seeker_activities, :seeker_architecture, :seeker_commute
  json.url seeker_url(seeker, format: :json)
end
