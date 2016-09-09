class Object
  def metaclass
    class << self
      self
    end
  end
end

class Foo
  def do_something
    p 'do something'
  end

  def self.do_something_else
    p 'do something else'
  end
end

foo = Foo.new

p foo.metaclass

# sc = foo.singleton_class
# def sc.abc
#   p 'sth'
# end
# # foo.abc
# sc.abc
p Foo.metaclass
p Class.metaclass
p Module.metaclass
p Object.metaclass
p foo.metaclass.metaclass
p foo.metaclass.metaclass.metaclass
p foo.metaclass.metaclass.metaclass.metaclass
p foo.metaclass.metaclass.metaclass.metaclass.metaclass

# p Foo.instance_methods false
# p Foo.metaclass.instance_methods false