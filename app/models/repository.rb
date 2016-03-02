require 'httparty'
class Repository
  attr_reader :repo
  def initialize(username)
    @username = username
    @user = HTTParty.get("https://api.github.com/users/#{username}/repos?access_token=#{ENV["GITHUB_TOKEN"]}")
  end

  def repo_name
    names = []
    @user.map { |r| names << r["name"] }
    names
  end

  def description
    descriptions = []
    @user.map { |r| descriptions << r["description"]}
    descriptions
  end
end
