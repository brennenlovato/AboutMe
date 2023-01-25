class Api::ProjectsController < ApplicationController

  def index
    render json: Project.all
  end

  def show
    @project = Project.find(params[:id])
    render json: @project
  end
end

  private
    def project_params
      params.require(:project).permit(:title, :desc)
    end
