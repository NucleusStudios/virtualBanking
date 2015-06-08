class CreateBankers < ActiveRecord::Migration
  def change
    create_table :bankers do |t|
      t.string :firstName
      t.string :lastName
      t.string :mobileNumber
      t.string :phoneNumber
      t.string :email
      t.integer :branch_id

      t.timestamps null: false
    end
  end
end
