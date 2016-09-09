### eval

class Foo
  def initialize(value = 5)
    @value = value
  end

  def do_something
    p 'do something foo'
  end
end

foo = Foo.new

str = 'Hello'

p eval('str + " Dao"')

# p foo.value
p foo.instance_eval('@value')

Foo.class_eval('def do_something_else; p "do something else"; end')

foo.do_something_else
