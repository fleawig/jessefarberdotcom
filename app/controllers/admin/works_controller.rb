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

  def edit
    @work = Work.find_by_id(params[:id])
    return render_not_found if @work.blank?
  end

  def update
    @work = Work.find_by_id(params[:id])
    return render_not_found if @work.blank?
    @work.update_attributes(work_params)
    if @work.valid?
      redirect_to admin_works_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @work = Work.find_by_id(params[:id])
    return render_not_found if @work.blank?
    @work.destroy
    redirect_to admin_works_path
  end

  private

  def work_params
    params.require(:work).permit(:title, :year, :medium, :dimensions, :work_type)
  end
end
