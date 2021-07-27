class EmployeedetailsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  skip_before_action :verify_authenticity_token , only: [:create]
  respond_to :html, :json

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
    
        respond_to do |format|
          if @employeedetail.save
            format.js
            format.html { redirect_to @employeedetail, notice: "Employee was successfully created." }
            format.json { render :show, status: :created, location: @employee }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @employeedetail.errors, status: :unprocessable_entity }
          end
        end
    end

    private
    def employeedetail_params
      params.require(:employeedetail).permit(:firstname, :lastname, :dob, :gender, :contact, :emal, :country, :location, :about, :industry, :skills, :currentposition, :user_id , :image, experiences_attributes: [:id, :title, :jobtype, :company, :joblocation, :startdate, :enddate] )
    end
    
    def destroy
      @employeedetail=Employeedetail.find(params[:id])
      @employeedetail.destroy
      respond_to do |format|
        format.html { redirect_to employeedetails_url }
        format.json { head :no_content }
      end
    end

    def search
      @query = params[:query]
      @employeedetails= Employeedetail.where("employeedetails.firstname LIKE ?",["%#{@query}%"])
      render "index"
    end

    def edit
      @employeedetail= Employeedetail.find(params[:id])
    end

    def update
      
        if @employeedetail.update(empdetail_params)
          flash.now[:success] = "Saved the Employee Details"
          redirect_to employeedetail_path
        else
          flash.now[:error] = "Unable to add the employee"
           render 'new'
        
      end
    end

end
