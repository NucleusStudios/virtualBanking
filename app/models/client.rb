class Client < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :banker
  has_many :accounts
  validates :lastName, :street, :streetNr, :zipCode, :city, :birthDate, :birthPlace, :socialSecurityNumber, presence: true
end
