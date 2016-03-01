class Repository

  def initialize(username)
    @repo = HTTParty.get("https://api.github.com/users/#{username}/repos", :headers => { 'Username' => 'dankb82', 'User-Agent' => 'dankb82'})
  end

  def repo_name
    
  end
end
