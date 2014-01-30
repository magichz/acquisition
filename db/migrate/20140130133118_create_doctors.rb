class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.integer :Doctor_ID
      t.integer :Medical_Centre_ID
      t.string :Doctor_Name
      t.float :Doctor_Hourly_Rate
      t.integer :Doctor_Service_Year
      t.integer :Doctor_Plan_Year
      t.boolean :Doctor_Contract
      t.date :Start_Date
      t.date :End_Date

      t.timestamps
    end
  end
end
