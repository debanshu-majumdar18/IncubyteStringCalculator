class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..-1]
    end

    numbers = numbers.gsub(/#{delimiter}|\n/, ",")
    num_list = numbers.split(',').map(&:to_i)

    negatives = num_list.select { |num| num < 0 }
    if negatives.any?
      raise "Negative numbers not allowed: #{negatives.join(",")}"
    end

    num_list.sum
  end
end
