class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :Rating_ID
      t.string :Rating_Desc

      t.timestamps
    end
  end
end
