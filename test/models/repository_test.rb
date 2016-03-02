require 'test_helper'

class RepositoryTest < ActiveSupport::TestCase
  test "can get repo name" do
    r = Repository.new("masonfmatthews")
    assert_equal "axyoms", r.repo_name.first
  end

  test "can get project description" do
    r = Repository.new("masonfmatthews")
    assert_equal 14, r.description.count
    assert_equal "Graph-based student evaluation system", r.description.first
  end
end
