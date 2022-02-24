class Day3Part1

  def initialize(params)
    @day = params[:day]
  end

  def calculate
    puts @day
    input = File.read("../../../files/2021/DataDay3.txt").lines.map(&:to_s)

    gammaRate = []
    epsilonRate = []

    n = input.length
    puts n

    for position in 0 .. input.at(0).split("").length-1 do
      gammaSum = 0
      for binaryPosition in 0 .. input.length - 1 do
        binary = input.at(binaryPosition).split("")
        if binary[position].to_i === 1
          gammaSum += 1
        end
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
  end
end

day = Day3Part1.new({ day: 'Thursday'})
day.calculate
