class UserProjectColorsController < ApplicationController
  unloadable
  before_action :find_project, :find_user_project_color, :authorize

  def create
    color = params[:back_to_default].present? ? nil : params[:user_project_colors][:color]
    @user_project_color.update(color: color)
    redirect_to action: :index
  end

  private
    def find_project
      @project = Project.find(params[:project_id])
    end

    def find_user_project_color
      @user_project_color = UserProjectColors.find_or_initialize_by(
                              user_id: session[:user_id],
                              project_id: @project.try(:id)
                            )
    end
end
