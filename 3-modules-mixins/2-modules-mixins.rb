module Beer
  def drink
    puts 'dzzoooo!'
  end

  def Beer.included(clas)
    puts 'included ' + clas.name
  end

  def Beer.extended(clas)
    puts 'extended ' + clas.name
  end
end

class Foo
  include Beer
end

class Bar
  extend Beer
end
