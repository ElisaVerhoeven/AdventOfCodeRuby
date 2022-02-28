input = File.read("../../../files/2020/Day3.txt").lines.map(&:to_s)

verticalPosition = 0
horizontalPosition = 0

horizontalLength = input[0].length - 1
verticalLength = input.length

countSquares = 0
countTrees = 0

while !(verticalLength == verticalPosition + 1)
  pattern = input[verticalPosition]
  character = pattern[horizontalPosition]
  puts(character)

  if character == "."
    countSquares += 1
  else
    countTrees += 1
  end



  verticalPosition += 1

  if horizontalPosition + 3 > horizontalLength
    horizontalPosition = horizontalPosition - horizontalLength + 2
  else
    horizontalPosition += 3
  end
end

puts "Squares: #{countSquares} \nTrees: #{countTrees}"
