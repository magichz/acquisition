class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :Contact_ID
      t.string :Contact_Title
      t.string :Contact_Position
      t.string :Contact_Email
      t.string :Phone_Number
      t.string :Contact_Type

      t.timestamps
    end
  end
end
