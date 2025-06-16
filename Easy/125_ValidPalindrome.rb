# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    s = s.downcase.gsub(/[^a-z0-9]/, '')
    s == s.reverse
end
