# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    i = digits.length - 1

    while i >= 0
        if digits[i] < 9
            digits[i] += 1
            return digits
        else
            digits[i] = 0
        end
        i -= 1
    end

    [1] + digits
end
