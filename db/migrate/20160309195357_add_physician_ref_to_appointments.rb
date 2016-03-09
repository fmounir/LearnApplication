class AddPhysicianRefToAppointments < ActiveRecord::Migration
  def change
    add_reference :appointments, :physician, index: true, foreign_key: true
  end
end
