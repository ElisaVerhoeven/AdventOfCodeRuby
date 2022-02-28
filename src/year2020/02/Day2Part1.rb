input = File.read("../../../files/2020/Day2.txt").lines.map(&:to_s)


countValidPasswords = 0

input.each do |password|
  value = password.split(/[: *, \s,-]/)
  minimumValue = value[0].to_i
  maximumValue = value[1].to_i
  keyCharacter = value[2]
  finalPassword = value[4]

  countKeyCharacters = 0

  finalPasswordCharacters = finalPassword.split("")

  finalPasswordCharacters.each do |letter|

    if (letter == keyCharacter)
      countKeyCharacters += 1
    end
  end

  if countKeyCharacters >= minimumValue && countKeyCharacters <= maximumValue
    countValidPasswords += 1
  end

end

puts countValidPasswords