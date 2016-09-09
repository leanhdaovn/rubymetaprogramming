module Beer
  include Bong
  def drink
    puts 'dzzoooo!'
  end
end

module Bong
  include Beer
  def drink
    puts 'booooo!'
  end
end

class Foo
  include Bong
  include Beer

  # def drink
  #   puts 'Fooooo!'
  # end

  # include Beer
end

class Bar
  extend Bong
  extend Beer

  # def self.drink
  #   puts 'Baaarrrr!'
  # end

  # extend Beer
end



foo = Foo.new
bar = Bar.new

foo.drink
# bar.drink

# Foo.drink
Bar.drink
