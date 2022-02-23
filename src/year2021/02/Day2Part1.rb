input = File.read("../../../files/2021/DataDay2.txt").lines.map(&:to_s)

horizontalPosition = 0
depth = 0

input.each do |inputValue|
  value = inputValue.split
  number = value[1].to_i

  case value[0]
  when "forward"
    horizontalPosition += number
  when "down"
    depth += number
  when "up"
    depth -= number
  end

end

puts horizontalPosition*depth

