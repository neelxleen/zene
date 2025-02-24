class DashboardController < ApplicationController
  before_action :authenticate_user!, :current_user
  layout "dashboard" # Apply the dashboard layout
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
  
  def index
    @total_personnel = Employee.count # Total number of employees
    # @temp_out_count = Visit.where(time_out: nil).count # Count of temporary OUT personnel
    # @duty_in_count = Visit.where(purpose_of_visit: 'Government Duty', time_out: nil).count # Count of personnel on duty
    # @leave_govt_duty_count = Visit.where(purpose_of_visit: ['Leave', 'Government Duty'], time_out: nil).count

    # @visitors_not_checked_out = Visit.where(time_out: nil).joins(:visitor).select("visitors.*")
  end
  def  external_check_in
  end

end
