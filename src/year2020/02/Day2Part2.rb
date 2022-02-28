input = File.read("../../../files/2020/Day2.txt").lines.map(&:to_s)

validPasswordCounter = 0

input.each do |password|
  value = password.split(/[: *, \s,-]/)
  firstValue = value[0].to_i - 1
  secondValue = value[1].to_i - 1
  keyCharacter = value[2]
  finalPassword = value[4]

  if (finalPassword[firstValue] == keyCharacter && finalPassword[secondValue] != keyCharacter) || (finalPassword[firstValue] != keyCharacter && finalPassword[secondValue] == keyCharacter)
    validPasswordCounter += 1
  end
end

puts validPasswordCounter