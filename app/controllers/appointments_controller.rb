class AppointmentsController < ApplicationController

def create
    @patient = Patient.find(params[:patient_id])
    physicians = params[:physicians]
    appointment = Appointment.new
    appointment.start_date = params.require(:appointment).permit(:start_date)
    appointment.end_date = params.require(:appointment).permit(:end_date)
    appointment.physician = Physician.find(physicians) 
    @patient.appointments.create(appointment) 
     if(@patient.save)
      redirect_to @patient
      else
        render 'patients/new'
    end
end

end
