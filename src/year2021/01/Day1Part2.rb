input = File.read("../../../files/2021/DataDay1.txt").lines.map(&:to_i)

count = -1
previousValue = 0

input.each_cons(3) do |elementList|
  value = elementList.sum
  count += 1 if value > previousValue
  previousValue = value
end

puts count