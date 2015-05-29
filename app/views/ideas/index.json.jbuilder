json.array!(@ideas) do |idea|
  json.extract! idea, :id, :event_id, :creator_id, :name
  json.url idea_url(idea, format: :json)
end
