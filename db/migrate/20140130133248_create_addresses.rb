class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :Address_ID
      t.string :Address_street
      t.string :Address_Suburb
      t.string :Address_Postcode
      t.string :Address_State

      t.timestamps
    end
  end
end
