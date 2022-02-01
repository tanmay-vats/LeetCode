# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
    count = 0
    start = 0
    while (count < nums.size)
        current = start
        prev = nums[start]
        loop do
            next_index = (current + k) % nums.size;
            temp = nums[next_index]
            nums[next_index] = prev
            prev = temp;
            current = next_index
            count += 1
            break if start == current
        end
        start += 1
    end
end
