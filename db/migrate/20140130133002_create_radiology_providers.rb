class CreateRadiologyProviders < ActiveRecord::Migration
  def change
    create_table :radiology_providers do |t|
      t.integer :Radiology_Provider_ID
      t.string :Radiology_Provider_Name

      t.timestamps
    end
  end
end
