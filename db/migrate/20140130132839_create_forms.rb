class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.integer :Medical_Centre_ID
      t.string :Medical_Centre_Name
      t.string :Operation_Days
      t.integer :External_Rating_ID
      t.integer :Internal_Rating_ID
      t.integer :Practitioner_No
      t.integer :Admin_No
      t.integer :Nursing_No
      t.integer :Specialist_No
      t.float :Rental_Dietician
      t.float :Rental_Dentist
      t.float :Rental_Physio
      t.float :Rental_Hearing
      t.float :Revenue_Practice
      t.float :Revenue_Medicare
      t.float :Revenue_Thirdparty
      t.float :Revenue_Alliedhealth
      t.float :Rental_Pathology
      t.float :Profit_Beforetax
      t.float :Offer_Amount
      t.integer :Pathology_Provider_ID
      t.integer :Radiology_Provider_ID
      t.integer :Doctor_ID
      t.integer :Property_Ownership_ID
      t.integer :Contact_ID
      t.integer :Accountant_ID
      t.integer :Address_ID
      t.integer :Software_ID

      t.timestamps
    end
  end
end
