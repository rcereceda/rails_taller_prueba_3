class ReportsController < ApplicationController
  def index
  	@reports = Report.all
  	#@catalogs = Catalog.all.map { |catalog| [catalog.name, catalog.id] }
  end

  def new
  	@report = Report.new
  end

  def create
  	@report = Report.new(report_params)
  	@report.user = current_user
  	@report.save
  	redirect_to reports_path
  end

  private
    def set_report
      @report = Report.find(params[:id])
    end

    def report_params
      params.require(:report).permit(:information, :picture, :catalog_id)
    end
end
