class DevelopersController < ApplicationController
  before_filter :authenticate_admin!

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(developer_params)
    if @developer.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @developer = Developer.find(params[:id])
  end

  def update
     @developer = Developer.find(params[:id])
    if @developer.update(developer_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def developer_params
    params.require(:developer).permit(:name, :description, :specialites, :picture)
  end
end