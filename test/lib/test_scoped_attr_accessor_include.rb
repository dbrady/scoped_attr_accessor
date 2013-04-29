require 'debugger'
require 'minitest/autorun'
# Implicitly extend Foo with ScopedAttrAccessor by extending Object
require_relative '../../lib/scoped_attr_accessor/include'

# Load the common test suite
require_relative '../scoped_attr_accessor_test_module'

# Create a Test* class so it will run
class TestFooInclude < MiniTest::Unit::TestCase
  include ScopedAttrAccessorTests
end
