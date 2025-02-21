class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @total_personnel = Employee.count # Total number of employees
    # @temp_out_count = Visit.where(time_out: nil).count # Count of temporary OUT personnel
    # @duty_in_count = Visit.where(purpose_of_visit: 'Government Duty', time_out: nil).count # Count of personnel on duty
    # @leave_govt_duty_count = Visit.where(purpose_of_visit: ['Leave', 'Government Duty'], time_out: nil).count

    # @visitors_not_checked_out = Visit.where(time_out: nil).joins(:visitor).select("visitors.*")
  end
end
