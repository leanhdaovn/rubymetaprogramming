class Foo
  def do_something
    p 'do something'
  end

  def add_more_singleton_methods
    # p self

    class << self
      # p self

      def do_something_special
        p 'do something special'
      end
    end
  end
end

foo_1 = Foo.new
foo_2 = Foo.new

# foo_1.do_something
# foo_2.do_something


# def foo_1.do_something_else
#   p 'do something else'
# end

# class << foo_1
#   def do_something_else
#     p 'do something else differently'
#   end
# end
#
# foo_1.do_something_else
# foo_2.do_something_else


# foo_2.add_more_singleton_methods

# foo_1.do_something_special
# foo_2.do_something_special
