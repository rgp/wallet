json.array!(@pockets) do |pocket|
  json.extract! pocket, :id, :user_id, :balance
  json.url pocket_url(pocket, format: :json)
end
