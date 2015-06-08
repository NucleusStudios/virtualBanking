class Account < ActiveRecord::Base
  belongs_to :status
  belongs_to :category
  belongs_to :client
  has_one :card
  validates :beginDate, :expiryDate, :saldo, :rate, presence: true

end
