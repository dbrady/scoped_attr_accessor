#!/usr/bin/env ruby

# This module adds scoped accessor methods to a Ruby Class. For
# example:
#
#   class Foo
#     extend ScopedAttrAccessor
#     private_attr_reader :thing1, :thing2, :thing3
#     protected_attr_writer :counter
#     protected_attr_accessor :flagbag
#   end
#
# They work exactly the same as the regular ruby attr_accessor
# methods, except they are placed in the appropriate public or
# private scope as desired.
module ScopedAttrAccessor
  def private_attr_reader(*names)
    attr_reader(*names)
    private(*names)
  end

  def private_attr_writer(*names)
    attr_writer(*names)
    private(*names.map {|name| "#{name}="})
  end

  def private_attr_accessor(*names)
    private_attr_reader(*names)
    private_attr_writer(*names)
  end

  def protected_attr_reader(*names)
    attr_reader(*names)
    protected(*names)
  end

  def protected_attr_writer(*names)
    attr_writer(*names)
    protected(*names.map {|name| "#{name}="})
  end

  def protected_attr_accessor(*names)
    protected_attr_reader(*names)
    protected_attr_writer(*names)
  end
end
