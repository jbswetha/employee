class EmployeedetailsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  skip_before_action :verify_authenticity_token , only: [:create]

    def index
        @employeedetail=Employeedetail.all
    end

    def show
        @employeedetail= Employeedetail.find(params[:id])
    end
    
    def new
        #@employeedetail = Employeedetail.new
        @employeedetail = current_user.employeedetail.build
        @employeedetail.experiences.build
    end
    
    def create
        @employeedetail = current_user.employeedetail.new(employeedetail_params)
    
        if @employeedetail.save
          redirect_to employeedetails_path(@employeedetail)
        else
          render :new
        end
    end

    private
    def employeedetail_params
      params.require(:employeedetail).permit(:firstname, :lastname, :dob, :gender, :contact, :emal, :country, :location, :about, :industry, :skills, :currentposition, :user_id , :image, experiences_attributes: [:id, :title, :jobtype, :company, :joblocation, :startdate, :enddate] )
    end
    
    def destroy
      employeedetail.destroy
      
      redirect_to employeedetails_path, notice: "Employee detail was successfully destroyed." 
      
    end

    def search
      @query = params[:query]
      @employeedetails= Employeedetail.where("employeedetails.firstname LIKE ?",["%#{@query}%"])
      render "index"
    end

    def edit
      employeedetail
    end

    def update
      
        if @empdetail.update(empdetail_params)
         redirect_to @employeedetail, notice: "Employee detail was successfully updated." 
          render :show, status: :ok, location: @employeedetail 
        else
          render :edit, status: :unprocessable_entity 
          render json: @employeedetail.errors, status: :unprocessable_entity 
        
      end
    end

end
