class CreatePathologyProviders < ActiveRecord::Migration
  def change
    create_table :pathology_providers do |t|
      t.integer :Pathology_Provider_ID
      t.string :Pathology_Provider_Name

      t.timestamps
    end
  end
end
