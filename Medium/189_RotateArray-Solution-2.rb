# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
    return nums if k == 0

    (1..k).each do |i|
        val = nums.pop
        nums.unshift(val)
    end
    nums
end
