input = File.read("../../../files/2021/DataDay2.txt").lines.map(&:to_s)

horizontalPosition = 0
depth = 0
aim = 0

input.each do |inputValue|
  value = inputValue.split
  number = value[1].to_i

  case value[0]
  when "forward"
    horizontalPosition += number
    depth = depth + (aim * number)
  when "down"
    aim += number
  when "up"
    aim -= number
  end

end

puts horizontalPosition*depth
