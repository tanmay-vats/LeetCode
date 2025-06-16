# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    non_zero_index = 0

    nums.each_with_index do |num, i|
        if num != 0
            nums[non_zero_index], nums[i] = nums[i], nums[non_zero_index]
            non_zero_index += 1
        end
    end

    nums
end
