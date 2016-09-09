class Foo
  def do_something
    p 'do something'
  end

  # class << self
  #   def do_something_else
  #     p 'do something else'
  #   end
  # end

  def self.add_more_class_methods
    # p self

    class << self
      # p self
      @val = 5
      def self.get_val
        @val
      end
      def self.set_val(value)
        @val = value
      end
      def do_something_different
        p 'do something different'
        p @val
      end
    end
  end
end

foo = Foo.new

# foo.do_something

# class << Foo
#   # p self
#   def do_something_else
#     # p self
#     p 'do something else'
#   end
# end

# foo.do_something_else
# Foo.do_something_else

# Foo.do_something_different

Foo.add_more_class_methods
Foo.do_something_different

Foo.singleton_class.set_val 7

p Foo.singleton_class.instance_variable_get(:@val)
p Foo.singleton_class.get_val