def two_sum(arr)
  pairs = []

  (0...arr.length).each do |start|
    (start...arr.length).each do |ending|
      if ending > start
        if arr[start] + arr[ending] == 0
          pairs << [start, ending]
        end
      end
    end
  end

  pairs
end