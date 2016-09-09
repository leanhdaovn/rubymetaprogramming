class Foo
  def initialize
    @value = 0
  end

  def add(value)
    old_val = @value
    @value += value
    p "#{old_val} + #{value} = #{@value}"
  end

  def subtract(value)
    old_val = @value
    @value -= value
    p "#{old_val} - #{value} = #{@value}"
  end

  # def multiply(value)
  #   old_val = @value
  #   @value *= value
  #   p "#{old_val} * #{value} = #{@value}"
  # end

  def value
    @value
  end
end

foo = Foo.new

# ------Normal call-------
# foo.add 23
# foo.add 58
# foo.subtract 31
# foo.add 19
# foo.subtract 42

commands = [
    {operation: :add, value: 23},
    {operation: :add, value: 58},
    {operation: :subtract, value: 31},
    {operation: :add, value: 19},
    {operation: :subtract, value: 42},
    {operation: :multiply, value: 2}
]

###-------Dynamic call using conditional---------
# commands.each { |command|
#   case command[:operation]
#     when :add
#       foo.add command[:value]
#     when :subtract
#       foo.subtract command[:value]
#     when :multiply
#       foo.multiply command[:value]
#     else
#   end
# }

# -------Dynamic call using 'send'---------
# commands.each { |command|
#   foo.send(command[:operation], command[:value]);
# }

# -------Dynamic call using 'call'---------
# commands.each { |command|
#   method = foo.method(command[:operation]);
#   method.call(command[:value])
#   # p Foo.instance_method(command[:operation])
# }

# p foo.dig(:abc)