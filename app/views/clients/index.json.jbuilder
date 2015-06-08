json.array!(@clients) do |client|
  json.extract! client, :id, :firstName, :lastName, :street, :streetNr, :zipCode, :city, :birthDate, :deathDate, :birthPlace, :socialSecurityNumber, :nationality, :mobileNumber, :banker_id
  json.url client_url(client, format: :json)
end
