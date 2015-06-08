class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :firstName
      t.string :lastName
      t.string :street
      t.string :streetNr
      t.string :zipCode
      t.string :city
      t.date :birthDate
      t.date :deathDate
      t.string :birthPlace
      t.string :socialSecurityNumber
      t.string :nationality
      t.string :mobileNumber
      t.integer :banker_id

      t.timestamps null: false
    end
  end
end
