# @param {String} s
# @return {Integer}
def my_atoi(s)
    s = s.strip
    return 0 if s.empty?

    sign = 1
    result = 0
    i = 0

    # Check for sign
    if s[i] == '-' || s[i] == '+'
        sign = -1 if s[i] == '-'
        i += 1
    end

    # Read digits and build the number
    while i < s.length && s[i] >= '0' && s[i] <= '9'
        result = result * 10 + s[i].to_i
        i += 1
    end

    result *= sign

    # Clamp to 32-bit signed integer range
    [[-2**31, result].max, 2**31 - 1].min
end
