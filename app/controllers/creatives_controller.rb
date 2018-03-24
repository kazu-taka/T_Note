class CreativesController < ApplicationController
  layout "creative"

  def index
    @school = School.new
    @schools = School.page(params[:page]) 
  end
end
