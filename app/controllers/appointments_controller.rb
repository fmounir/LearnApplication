class AppointmentsController < ApplicationController


def create
    
    @patient = Patient.find(params[:patient_id])
    @patient.appointments.create(params.require(:appointment).permit(:start_date, :end_date, :physician))
    redirect_to @patient
end

end
