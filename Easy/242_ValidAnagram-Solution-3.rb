# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    s.bytes.tally == t.bytes.tally
end
