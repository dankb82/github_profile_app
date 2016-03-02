class RepositoriesController < ApplicationController
  def ask
  end

  def show
    @username = params[:username]
    @user = Repository.new(@username)
    render json: @user
  end
end
