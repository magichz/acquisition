class CreateClientSoftwares < ActiveRecord::Migration
  def change
    create_table :client_softwares do |t|
      t.integer :Software_ID
      t.string :Software_Name

      t.timestamps
    end
  end
end
