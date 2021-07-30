class ExperiencesController < ApplicationController
    def new
        @experience = @employeedetail.experiences.build
      end
    
    def create
        @experience=@employeedetail.experiences.create(experience_params)
        #redirect_to employeedetails_path(@employeedetail)
        respond_to do |format|
            if @experience.save
  
                #format.js
                format.html { redirect_to @employeedetail, notice: "Employee was created successfully." }
                # format.json { render :show, status: :created, location: @experience }
                #format.json { render json: { html: render_to_string(partial: 'list_experience.html.erb')} }
            else
                format.html { render :new }
                format.json { render json: @employeedetail.errors, status: :unprocessable_entity }
                format.js
            end
          end
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

      
    private 
    def experience_params
    params.require(:experience).permit(:title, :jobtype, :company, :joblocation, :startdate, :enddate)
    
    end 

   
end
