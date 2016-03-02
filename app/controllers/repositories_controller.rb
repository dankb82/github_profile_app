class RepositoriesController < ApplicationController
  def ask
  end

  def show
    @username = params[:username]
    @user = Repository.new(@username)
  end
end
