# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    groups = Hash.new { |h, k| h[k] = [] }
    strs.each do |s|
    key = s.chars.sort.join
        groups[key] << s
    end
    groups.values
end
