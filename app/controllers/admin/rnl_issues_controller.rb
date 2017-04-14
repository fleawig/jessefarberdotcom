class Admin::RnlIssuesController < ApplicationController
  before_action :authenticate_admin!

  def new
    @rnl_issue = RnlIssue.new
  end

  def create
    @rnl_issue = RnlIssue.create(rnl_issue_params)
    redirect_to admin_rnl_issues_path, notice: 'New RNL issue was added successfully.'
  end

  def index
    @rnl_issues = RnlIssue.all
  end

  def edit
    @rnl_issue = RnlIssue.find_by_id(params[:id])
    return render_not_found if @rnl_issue.blank?
  end

  def update
    @rnl_issue = RnlIssue.find_by_id(params[:id])
    return render_not_found if @rnl_issue.blank?
    @rnl_issue.update_attributes(rnl_issue_params)
    if @rnl_issue.valid?
      redirect_to admin_rnl_issues_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @rnl_issue = RnlIssue.find_by_id(params[:id])
    return render_not_found if @rnl_issue.blank?
    @rnl_issue.destroy
    redirect_to admin_rnl_issues_path
  end
  private

  def rnl_issue_params
    params.require(:rnl_issue).permit(:issue_number, :title, :description)
  end
end
