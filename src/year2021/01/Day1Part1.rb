input = File.read("../../files/2021/DataDay1.txt").lines.map(&:to_i)

increasedCounter = 0
previousMeasurement = input.at(0)

input.each do |measurement|
  increasedCounter += 1 if previousMeasurement < measurement
  previousMeasurement = measurement
end

puts increasedCounter
