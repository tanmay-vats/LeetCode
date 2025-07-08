# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    left = 0
    right = numbers.length - 1

    while left < right
        sum = numbers[left] + numbers[right]

        if sum == target
        return [left + 1, right + 1]  # Convert to 1-based indexing
        elsif sum < target
        left += 1
        else
        right -= 1
        end
    end
end
