class Repository
  attr_reader :repo
  def initialize(username)
    @repo = HTTParty.get("https://api.github.com/users/#{username}/repos?access_token=#{ENV["GITHUB_TOKEN"]}")
  end

  def repo_name
    names = []
    @repo.each do |r|
      names << r['name']
    end
    names
  end
end
