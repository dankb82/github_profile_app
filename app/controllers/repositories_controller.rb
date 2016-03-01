class RepositoriesController < ApplicationController
  def ask
  end

  def show
    r = Repository.new("dankb82")
    render json: r.repo_name
  end
end
