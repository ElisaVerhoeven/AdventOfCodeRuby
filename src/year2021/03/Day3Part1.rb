class Day3Part1

  def calculate
    input = File.read("../../../files/2021/DataDay3.txt").lines.map(&:to_s)

    gammaRate = []
    epsilonRate = []

    n = input.length

    for position in 0 .. input.at(0).split("").length-2 do
      gammaSum = 0
      for binaryPosition in 0 .. input.length - 1 do
        binary = input.at(binaryPosition).split("")
        if binary[position].to_i == 1
          gammaSum += 1
        end
        # puts input.at(binaryPosition)
      end

      if gammaSum >= n/2
        gammaRate << 1
        epsilonRate << 0
      else
        gammaRate << 0
        epsilonRate << 1
      end
    end
    puts "Gamma rate: #{gammaRate}, Epsilon rate: #{epsilonRate}"

    puts "Gamma integer: #{calculateBinaryNumber(gammaRate)} \nEpsilon integer: #{calculateBinaryNumber(epsilonRate)} \nMultiplication: #{calculateBinaryNumber(gammaRate)*calculateBinaryNumber(epsilonRate)}"
  end

  def calculateBinaryNumber(rate)
    sum = 0
    n = rate.length-1

    rate.each do |binary|
      sum += binary * (2**n)
      n -= 1
    end
    return sum
  end
end

method = Day3Part1.new()
method.calculate