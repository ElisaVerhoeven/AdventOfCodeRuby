input = File.read("../../../files/2020/Day1.txt").lines.map(&:to_i)

CONSTANT = 2020

input.each do |firstValue|
  input.each do |secondValue|
    input.each do |thirdValue|
      if (firstValue + secondValue + thirdValue == CONSTANT)
        puts "ANSWER: #{firstValue * secondValue * thirdValue}"
        break
      end
    end
  end
end