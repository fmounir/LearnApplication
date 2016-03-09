class AddPhysicianRefToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :physician, :reference
  end
end
