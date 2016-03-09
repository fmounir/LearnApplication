class AddPatientRefToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :patient, :reference
  end
end
