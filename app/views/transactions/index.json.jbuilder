json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :pocket_id, :description, :amount, :type
  json.url transaction_url(transaction, format: :json)
end
