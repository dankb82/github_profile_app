class RepositoriesController < ApplicationController
  def ask
  end

  def show
    r = Repository.new("masonfmatthews")
    render json: r
  end
end
