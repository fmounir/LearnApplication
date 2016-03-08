class CreateEmailtemplates < ActiveRecord::Migration
  def change
    create_table :emailtemplates do |t|
      t.string :key
      t.string :subject
      t.text :body

      t.timestamps null: false
    end
  end
end
