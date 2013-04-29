require 'minitest/autorun'
require_relative '../../lib/scoped_attr_accessor'

# Directly extend Foo with ScopedAttrAccessor
module ScopedAttrAccessorTests
  class Foo
    extend ScopedAttrAccessor
  end
end

# Load the common test suite
require_relative '../scoped_attr_accessor_test_module'

# Create a Test* class so it will run
class TestFoo < MiniTest::Unit::TestCase
  include ScopedAttrAccessorTests
end
