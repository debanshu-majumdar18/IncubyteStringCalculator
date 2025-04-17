class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..-1]
    end

    numbers = numbers.gsub(/#{delimiter}|\n/, ",")
    numbers.split(',').map(&:to_i).sum
  end
end
