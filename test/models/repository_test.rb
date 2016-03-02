require 'test_helper'

class RepositoryTest < ActiveSupport::TestCase
  test "can get repo name" do
    r = Repository.new("masonfmatthews")
    assert_equal "axyoms", r.repo_name.first
  end
end
