class VisitorsController < ApplicationController
    before_action :set_visitor, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
  
    def index
      @visitors = Visitor.all
    end
  
    def show
      @visitor = Visitor.find(params[:id])
    end
  
    def new
      @visitor = Visitor.new
    end
  
    def create
      @visitor = Visitor.new(visitor_params)
  
      if @visitor.save
        redirect_to @visitor, notice: 'Visitor was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @visitor.update(visitor_params)
        redirect_to @visitor, notice: 'Visitor was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @visitor.destroy
      redirect_to visitors_url, notice: 'Visitor was successfully destroyed.'
    end
  
    private
      def set_visitor
        @visitor = Visitor.find(params[:id])
      end
  
      def visitor_params
        params.require(:visitor).permit(
          :name,
          :along_with,
          :national_id,
          :contact_no,
          :personal_vehicle_type,
          :vehicle_no,
          :purpose_of_visit,
          :relationship_with_employee,
          :employee_id,
          :photo
        )
      end
  end