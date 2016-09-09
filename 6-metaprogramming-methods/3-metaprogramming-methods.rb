class Computer
  attr_accessor :mouse_info,
                :mouse_price,
                :keyboard_info,
                :keyboard_price,
                :screen_info,
                :screen_price,
                :speaker_info,
                :speaker_price
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