class SchoolsController < ApplicationController
  before_action :authenticate_user!
  def index
    @schools = School.all
  end

  def create
    @school = School.new(school_params)
    if  @school.save
    redirect_to schools_path
    else
    flash.now[:alert] = @school.errors.full_messages
    render :new
    end
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy
    redirect_to schools_path
  end

  def show
    @school = School.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where(school_id: params[:id].to_i)
  end

  def new
    @school = School.new
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])
    @school.update(school_params)
    redirect_to schools_path
  end

  private

  def school_params
    params.require(:school).permit(:title, :name, :career, :gakko, :content, :post_id)
  end

end
