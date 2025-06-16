# @param {Integer} x
# @return {Integer}
def reverse(x)
    min = -2**31
    max = (2**31) - 1

    reversed = x.abs.to_s.reverse.to_i
    reversed *= -1 if x < 0

    return 0 if reversed < min || reversed > max
    reversed
end
