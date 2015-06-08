json.array!(@cards) do |card|
  json.extract! card, :id, :PAN, :expiryDate, :limit, :managingCompany, :account_id, :status_id, :type_id
  json.url card_url(card, format: :json)
end
