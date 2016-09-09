### remove_method

class Foo
  def do_something
    p 'do something foo'
  end

  def self.do_no_more
    remove_method :do_something
  end
end

class Bar < Foo
  def do_something
    p 'do something bar'
  end

  def self.do_no_more
    remove_method :do_something
  end

  def self.force_do_no_more
    undef_method :do_something
  end
end

foo = Foo.new
bar = Bar.new

foo.do_something
bar.do_something

# Foo.do_no_more
#
# foo.do_something
# bar.do_something

# Bar.do_no_more
# bar.do_something

# Bar.force_do_no_more
#
# foo.do_something
# bar.do_something