### define_method

class Computer
  computer_parts = %w{mouse keyboard screen speaker}

  computer_parts.each { |part|
    define_method "#{part}_info" do
      instance_variable_get("@#{part}_info")
    end

    define_method "#{part}_price" do
      instance_variable_get("@#{part}_price")
    end

    define_method "#{part}_info=" do |value|
      instance_variable_set("@#{part}_info", value)
    end

    define_method "#{part}_price=" do |value|
      instance_variable_set("@#{part}_price", value)
    end
  }
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