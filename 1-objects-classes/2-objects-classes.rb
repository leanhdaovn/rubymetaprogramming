class Foo
  def do_something
    p 'do something normally'
  end

  # protected

  def Foo.do_something_else
    p 'do something else'
  end

  def self.do_something_special
    p 'do something special'
  end
end

# class Bar < Foo
# end

foo = Foo.new


### ----------Instance methods & class methods----------
# foo.do_something
# Bar.do_something_else
# Bar.do_something_special


### ----------Reopen class----------
class Foo
  def do_something
    p 'do something differently'
  end

  def self.do_something_else
    p 'do something else differently'
  end
end

bar = Foo.new

bar.do_something
foo.do_something
Foo.do_something_else