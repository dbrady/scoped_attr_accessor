# By requiring 'scoped_attr_accessor/include', scoped_attr_accessor
# will be injected into every Object automatically.
require_relative '../scoped_attr_accessor'

class Object
  extend ScopedAttrAccessor
end
