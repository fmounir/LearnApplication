require 'date'
class AppointmentsController < ApplicationController

def create
    @patient = Patient.find(params[:patient_id])
    physician_id = params[:physicians]
    
    #start_date = DateTime.strptime(params.require(:appointment).permit(:start_date) , "%Y-%d-%m")
    #end_date = DateTime.new(params.require(:appointment).permit(:end_date) , "%Y-%d-%m")
    
    start_date = DateTime.now
    end_date = DateTime.now
  
    @patient.appointments.create(start_date: start_date , end_date:  end_date , physician_id: physician_id) 
     if(@patient.save)
      redirect_to @patient
      else
        render 'patients/new'
    end
end

def destroy
    @appointment = Appointment.find(params[:id])
    @patient = @appointment.patient
    @appointment.destroy
    redirect_to @patient
end

end
