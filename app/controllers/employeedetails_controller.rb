class EmployeedetailsController < ApplicationController
    def index
        @employeedetails= Employeedetail.all
    end

    def show
        @employeedetail = Employeedetail.find(params[:id])
    end
    
    def new
        @employeedetail = Employeedetail.new
    end
    
    def create
        @employeedetail = Employeedetail.new(employeedetail_params)
    
        if @employeedetail.save
          redirect_to @employeedetail
        else
          render :new
        end
    end
    private
    def employeedetail_params
      params.require(:employeedetail).permit(:firstname, :lastname, :dob, :gender, :contact, :emal, :country, :location, :about, :industry, :skills, :currentposition)
    end
    
end
