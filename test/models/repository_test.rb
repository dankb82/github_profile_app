require 'test_helper'

class RepositoryTest < ActiveSupport::TestCase
  test "can get repo name" do
    r = Repository.new("dankb82")
    assert_equal "arrays", r.repo_name.first
  end
end
