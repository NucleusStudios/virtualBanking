class Banker < ActiveRecord::Base
  has_many :clients
  belongs_to :branch
  validates :name, :street, :streetNr, :zipCode, :city, presence: true

end
