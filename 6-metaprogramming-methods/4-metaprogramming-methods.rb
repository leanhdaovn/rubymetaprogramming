### method_mising

class Computer
  def method_missing(method_sym, *args, &block)
    if method_sym.to_s =~ /^(.*)_(info|price)$/
      instance_variable_get("@#{method_sym.to_s}")
    elsif method_sym.to_s =~ /^(.*)_(info|price)=$/
      instance_variable_set("@#{method_sym.to_s.chop}", *args)
    else
      super
    end
  end
end

computer = Computer.new

computer.mouse_info = 'Logitech'
computer.mouse_price = 14.5
computer.keyboard_info = 'Genius'
computer.keyboard_price = 21.0
computer.screen_info = 'LG'
computer.screen_price = 215.8
computer.speaker_info = 'Sound Max'
computer.speaker_price = 47.3

p computer.mouse_info
p computer.mouse_price
p computer.keyboard_info
p computer.keyboard_price
p computer.screen_info
p computer.screen_price
p computer.speaker_info
p computer.speaker_price

computer.map do
  p 'asd'
end