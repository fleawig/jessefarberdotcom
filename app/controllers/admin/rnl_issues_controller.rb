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

  private

  def rnl_issue_params
    params.require(:rnl_issue).permit(:issue_number, :title, :description)
  end
end
