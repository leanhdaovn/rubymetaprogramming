### normal

class Computer
  def mouse_price
    @mouse_price
  end

  def mouse_price=(value)
    @mouse_price = value
  end

  def mouse_info
    @mouse_info
  end

  def mouse_info=(value)
    @mouse_info = value
  end

  def keyboard_price
    @keyboard_price
  end

  def keyboard_price=(value)
    @keyboard_price = value
  end

  def keyboard_info
    @keyboard_info
  end

  def keyboard_info=(value)
    @keyboard_info = value
  end

  def screen_price
    @screen_price
  end

  def screen_price=(value)
    @screen_price = value
  end

  def screen_info
    @screen_info
  end

  def screen_info=(value)
    @screen_info = value
  end
end

computer = Computer.new

computer.mouse_info = 'Logitech'
computer.mouse_price = 14.5
computer.keyboard_info = 'Genius'
computer.keyboard_price = 21.0
computer.screen_info = 'LG'
computer.screen_price = 215.8
# computer.speaker_info = 'Sound Max'
# computer.speaker_price = 47.3

p computer.mouse_info
p computer.mouse_price
p computer.keyboard_info
p computer.keyboard_price
p computer.screen_info
p computer.screen_price
# p computer.speaker_info
# p computer.speaker_price