json.array!(@w_transactions) do |w_transaction|
  json.extract! w_transaction, :id, :pocket_id, :amount, :type
  json.url w_transaction_url(w_transaction, format: :json)
end
