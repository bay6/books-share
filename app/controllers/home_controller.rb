class HomeController < ApplicationController
  def index
    @projects = current_user.projects
  end

  def tag_cloud
  end
end
