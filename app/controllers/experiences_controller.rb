class ExperiencesController < ApplicationController
    def create
        @employeedetail=Employeedetail.find(params[:employeedetail_id])
        @experience=@employeedetail.experiences.create(experience_params)
        redirect_to employeedetails_path(@employeedetail)
    end

    private 
    def experience_params
    params.require(:experience).permit(:title, :jobtype, :company, :joblocation, :startdate, :enddate)
    
    end 
end
