input = File.read("../../../files/2020/Day1.txt").lines.map(&:to_i)

OUTPUT = 2020

input.each do |firstValue|
  input.each do |secondValue|
    if (firstValue + secondValue == OUTPUT)
      puts "Answer: #{firstValue} + #{secondValue} = #{firstValue + secondValue}"
      puts "Multiplication: #{firstValue * secondValue}"
    end
  end
end

