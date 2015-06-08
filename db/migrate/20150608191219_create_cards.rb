class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :PAN
      t.date :expiryDate
      t.float :limit
      t.string :managingCompany
      t.integer :account_id
      t.string :status_id
      t.integer :type_id

      t.timestamps null: false
    end
  end
end
