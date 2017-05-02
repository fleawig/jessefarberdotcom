class Artist::WorksController < ApplicationController

  def index_two_d
    @works = Work.two_d
  end

  def show_two_d
    @work = Work.find(params[:id])
  end

  def index_three_d
    @works = Work.three_d
  end

  def show_three_d
    @work = Work.find(params[:id])
  end
  
end
