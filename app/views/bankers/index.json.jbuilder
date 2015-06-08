json.array!(@bankers) do |banker|
  json.extract! banker, :id, :firstName, :lastName, :mobileNumber, :phoneNumber, :email, :branch_id
  json.url banker_url(banker, format: :json)
end
