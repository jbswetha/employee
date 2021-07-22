class EmployeedetailsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
    def index
        @employeedetail=Employeedetail.all
    end

    def show
        @employeedetail= Employeedetail.find(params[:id])
    end
    
    def new
        #@employeedetail = Employeedetail.new
        @employeedetail = current_user.employeedetail.build
    end
    
    def create
        @employeedetail = current_user.employeedetail.new(employeedetail_params)
    
        if @employeedetail.save
          redirect_to @employeedetail
        else
          render :new
        end
    end

    private
    def employeedetail_params
      params.require(:employeedetail).permit(:firstname, :lastname, :dob, :gender, :contact, :emal, :country, :location, :about, :industry, :skills, :currentposition, :user_id , :image)
    end
    
    def destroy
      @employee.destroy
      respond_to do |format|
        format.html { redirect_to employees_url, notice: "Employee was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    def edit
      @employeedetail= Employeedetail.find(params[:id])
    end

end
