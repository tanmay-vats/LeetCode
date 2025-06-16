# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    s.bytes.sort == t.bytes.sort
end
