class Admin::WorksController < ApplicationController
  before_action :authenticate_admin!

  def new
    @work = Work.new
  end

  def create
    @work = Work.create(work_params)
    redirect_to admin_works_path, notice: 'New work was added successfully.'
  end

  def index
    @works = Work.all
  end

  private

  def work_params
    params.require(:work).permit(:title, :year, :medium, :dimensions, :work_type)
  end
end
