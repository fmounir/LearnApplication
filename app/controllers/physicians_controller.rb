class PhysiciansController < ApplicationController


def new
    @physician = Physician.new
end

def create
    @physician = Physician.new(params.require(:physician).permit(:physician_name , :telephone_number))
    
    if(@physician.save)
        redirect_to @physician
        else
            render 'new'
    end
end

def show
    @physician = Physician.find(params[:id])
end 

def index 
    @allPhysicians = Physician.all
end

def edit
    @physician = Physician.find(:id)
end

def update
    @physician = Physician.find(:id)
    @physician.update(params.require(:physician).permit(:physician_name , :telephone_number))
    
    if(@physician.save)
        redirect_to @physician
        else 
            render 'edit'
    end
    
end 

def destroy
    @physician = Physician.find(:id)
    if(@physician.destroy)
        redirect_to physicians_path
        else
            render 'show'
    end
      
end



end
