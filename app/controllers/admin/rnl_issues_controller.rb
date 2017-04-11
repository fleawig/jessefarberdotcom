class Admin::RnlIssuesController < ApplicationController
  before_action :authenticate_admin!

  def new
    @rnl_issue = RnlIssue.new
  end
end
