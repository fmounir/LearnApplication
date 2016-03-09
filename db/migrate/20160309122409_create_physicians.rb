class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.string :physician_name
      t.string :telephone_number

      t.timestamps null: false
    end
  end
end
