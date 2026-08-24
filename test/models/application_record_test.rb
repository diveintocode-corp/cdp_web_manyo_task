require "test_helper"

class ApplicationRecordTest < ActiveSupport::TestCase
  test "uses the target Ruby and Rails versions" do
    expected_ruby_version = Rails.root.join(".ruby-version").read.strip

    assert_equal expected_ruby_version, RUBY_VERSION
    assert_equal "8.1.3", Rails.version
  end

  test "is an abstract Active Record base class" do
    assert_predicate ApplicationRecord, :abstract_class?
  end
end
