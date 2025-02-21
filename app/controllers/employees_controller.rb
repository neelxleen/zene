class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user! # Ensure user is logged in (Devise)
  
    def index
      @employees = Employee.all
    #   @employee = Employee.find(params[:id])
    end
  
    def show
        @employee = Employee.find(params[:id])
    end
  
    def new
      @employee = Employee.new
    end
    def create
        @employee = Employee.new(employee_params)
        if @employee.save
          redirect_to @employee, notice: 'Employee was successfully created.'
        else
          render :new, status: :unprocessable_entity
        end
    end
    
      
    
  
    def edit
        @employee = Employee.find(params[:id])
    end
    
    def update
        @employee = Employee.find(params[:id])
        if @employee.update(employee_params)
          redirect_to @employee, notice: 'Employee was successfully updated.'
        else
          render :edit, status: :unprocessable_entity
        end
    end
  
    
  
    def destroy
      @employee.destroy
      redirect_to employees_url, notice: 'Employee was successfully destroyed.'
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_employee
        @employee = Employee.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def employee_params
        params.require(:employee).permit(:force_id, :rank,:unithq, :name, :personal_vehicle_type, :contact_no, :vehicle_no, :photo)
      end
  end
  