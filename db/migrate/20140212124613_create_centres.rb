class CreateCentres < ActiveRecord::Migration
  def change
    create_table :centres do |t|
      t.integer :centre_id
      t.string :centre_name
      t.string :address_street
      t.string :address_suburb
      t.string :address_postcode
      t.string :Address_state
      t.string :operation_days
      t.string :external_rating
      t.string :internal_rating
      t.string :property_type
      t.integer :practitioner_no
      t.integer :admin_no
      t.integer :nursing_no
      t.integer :specialist_no
      t.float :rental_dietician
      t.float :rental_dentist
      t.float :rental_physio
      t.float :rental_hearing
      t.float :revenue_practice
      t.float :revenue_medicare
      t.float :revenue_thirdparty
      t.float :revenue_alliedhealth
      t.float :rental_pathology
      t.float :profit_beforetax
      t.float :offer_amount
      t.string :pathology_provider_Name
      t.integer :radiology_provider_name
      t.integer :doctor_id
      t.string :property_ownership
      t.integer :contact_id
      t.integer :accountant_id
      t.integer :address_id
      t.string :software_name
      t.string :contact_title
      t.string :contact_name
      t.string :contact_position
      t.string :contact_email
      t.string :phone_number
      t.string :contact_type
      t.integer :centre_id
      t.integer :centre_id
      t.string :doctor_name
      t.float :hourly_rate
      t.integer :service_year
      t.integer :plan_year
      t.boolean :doctor_contract
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
