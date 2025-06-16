# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    counts = Hash.new(0)

    s.each_char { |char| counts[char] += 1 }

    s.chars.each_with_index do |char, i|
        return i if counts[char] == 1
    end

    -1
end
