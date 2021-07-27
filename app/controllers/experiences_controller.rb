class ExperiencesController < ApplicationController
    def create
        @experience=@employeedetail.experiences.create(experience_params)
        redirect_to employeedetails_path(@employeedetail)
    end

    private 
    def experience_params
    params.require(:experience).permit(:title, :jobtype, :company, :joblocation, :startdate, :enddate)
    
    end 

    def edit
        @experience = @employeedetail.experiences.find(params[:id])
        render_to_string(partial: 'edit_experience_modal.html.erb', locals: {experience: @experience})
    end

    def destroy
        @experience.destroy
    end

    def index
        @experiences = @employeedetail.experiences.all
      end
end
