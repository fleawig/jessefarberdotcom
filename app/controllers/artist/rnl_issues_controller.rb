class Artist::RnlIssuesController < ApplicationController
  def index
    @rnl_issues = RnlIssue.all.order(:issue_number)
  end
end
