class Foo
  def do_something
    p 'do something'
  end
end

foo = Foo.new

p Kernel.class

# p '----------Objects----------'
# p foo
# p Foo
# p foo.method(:do_something)


# p '----------Classes----------'
# p foo.class
# p Foo.class
# p foo.method(:do_something).class
# p Class.class
# p Object.class
# p nil.class.superclass
# p Class.superclass


# p '----------Super classes----------'
# p Foo.superclass
# p Foo.superclass.superclass
# p Foo.superclass.superclass.superclass
# p Foo.superclass.superclass.superclass.superclass
# p Class.superclass
# p Class.superclass.superclass
# p Method.superclass