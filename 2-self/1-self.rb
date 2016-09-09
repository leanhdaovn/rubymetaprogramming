

class Object
  # def print_self(location)
  #   puts '-------------'
  #   puts 'Self: ' + self.to_s
  #   puts 'Type: ' + self.class.to_s
  #   puts 'Location: ' + location
  # end
end
#---------------------------------------#

def print_self(location)
  p 'reprint ' + location
  p self
end

p method(:print_self).inspect


print_self 'outside'

class Foo
  # print_self 'Foo'

  def self.class_method
    print_self 'class_method'
  end

  def instance_method
    print_self 'instance_method'
  end
end


bar = Foo.new

# bar.print_self 'bar.print_self'
# Foo.print_self 'Foo.print_self'

# bar.class.print_self 'bar.class.print_self'
# Foo.class.print_self 'bar.class.print_self'

Foo.class_method
bar.instance_method