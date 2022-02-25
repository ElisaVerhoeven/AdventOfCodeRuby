class Day3Part2

  # def initialize()
  #   # @part1 = Day3Part1.new()
  #   # @input = File.read("../../../files/2021/DataDay3.txt").lines.map(&:to_s)
  #   # @oxygenGeneratorRatingNumber = @input
  # end

  def test
    puts "hello"
  end

  def calculateOxygenGeneratorRating
    input = File.read("../../../files/2021/DataDay3.txt").lines.map(&:to_s)

    count = 0
    binarySize = input.at(0).split("").length-2
    sum = 0
    binaryNumber = 0

    while count <= binarySize && input.length != 1
      sum = 0
      input.each do |number|
        binary = number.split("")
        sum += 1 if binary[count].to_i == 1
      end

      puts "sum: #{sum}, binarysize/2: #{input.length/2}"

      binaryNumber = 1 if sum >= input.length/2


      input.delete_if do |number|
        value = number.split("")
          newValue = value[count].to_i
          puts newValue

          if value != binaryNumber
            input.delete(number)
            true
          else
            false
          end
      end


      # input.each do |number|
      #   value = number.split("")
      #   newValue = value[count].to_i
      #   puts newValue
      #
      #   if value != binaryNumber
      #     input.delete(number)
      #   end

      # end




      count += 1
      puts "count: #{count}, binary size #{binarySize}"
      puts rate

    end

    return outcome = calculateBinaryNumber(rate)

    # puts "rate: #{outcome}"



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

method = Day3Part2.new()
puts method.calculateOxygenGeneratorRating

