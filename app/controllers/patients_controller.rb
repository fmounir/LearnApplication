class PatientsController < ApplicationController

def new
    @patient = Patient.new
end

def create
    @patient = Patient.new(params.require(:patient).permit(:patient_name , :age , :telephone_number))
    
    if(@patient.save)
        redirect_to @patient
        else
            render 'new'
    end
end

def show
    @patient = Patient.find(params[:id])
    @physicians =  Physician.all
end 

def index 
    @allpatients = Patient.all
end

def edit
    @patient = Patient.find(params[:id])
end

def update
    @patient = Patient.find(params[:id])
    @patient.update(params.require(:patient).permit(:patient_name , :age , :telephone_number))
    
    if(@patient.save)
        redirect_to @patient
        else 
            render 'edit'
    end
    
end 

def destroy
    @patient = Patient.find(params[:id])
    if(@patient.destroy)
        redirect_to patients_path
        else
            render 'show'
    end
      
end




end
