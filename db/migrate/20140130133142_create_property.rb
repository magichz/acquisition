class CreateProperty < ActiveRecord::Migration
  def change
    create_table :property_ownerships do |t|
      t.integer :Property_ID
      t.string :Ownership_Desc
      t.string :Type_Desc
      t.integer :Address_ID

      t.timestamps
    end
  end
end
