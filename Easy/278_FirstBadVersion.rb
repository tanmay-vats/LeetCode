# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
    left = 1
    right = n

    while left < right
        mid = left + (right - left) / 2
        if isBadVersion(mid)
            right = mid  # First bad version is at mid or before
        else
            left = mid + 1  # First bad version is after mid
        end
    end

    left
end
