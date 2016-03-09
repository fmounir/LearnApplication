class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :patient_name
      t.integer :age
      t.string :telephone_number

      t.timestamps null: false
    end
  end
end
