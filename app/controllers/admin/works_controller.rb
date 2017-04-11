class Admin::WorksController < ApplicationController
  before_action :authenticate_admin!

  def new
    @work = Work.new
  end
end
