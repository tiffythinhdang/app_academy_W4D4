def my_transpose(arr)
  new_arr = []

  (0...arr.length).each do |row|
    sub_arr = []
    (0...arr.length).each do |col|
      sub_arr << arr[col][row]
    end
    new_arr << sub_arr
  end

  new_arr
end