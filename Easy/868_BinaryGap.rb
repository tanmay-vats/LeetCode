# @param {Integer} n
# @return {Integer}
def binary_gap(n)
  binary = n.to_s(2)
  prev_one = nil
  max_gap = 0

  binary.each_char.with_index do |char, index|
    next unless char == '1'
    
    if prev_one
      current_gap = index - prev_one
      max_gap = [max_gap, current_gap].max
    end
    prev_one = index
  end
  
  max_gap
end
