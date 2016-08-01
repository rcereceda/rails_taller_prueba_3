class ReportsController < ApplicationController
	#before_action :authenticate_user!
	load_and_authorize_resource :user
	load_and_authorize_resource :report, through: :user
  
  def index
  	@reports = Report.where(user: set_user)
  end

  def new
  	@user = set_user
  	@report = Report.new
  end

  def create
  	@report = Report.new(report_params)
  	@report.user = current_user
  	@report.save
  	redirect_to user_reports_path(current_user)
  end

  private
    def set_report
      @report = Report.find(params[:id])
    end

    def set_user
    	User.find(params[:user_id])
    end

    def report_params
      params.require(:report).permit(:information, :picture, :catalog_id)
    end
end
