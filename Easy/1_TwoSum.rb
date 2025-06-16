# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    seen = {}

    nums.each_with_index do |num, i|
        complement = target - num
        if seen.key?(complement)
            return [seen[complement], i]
        end
        seen[num] = i
    end
end