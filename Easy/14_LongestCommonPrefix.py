class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        if len(strs) == 0:
            return ""
        common_prefix = strs[0]
        for i in range(1,len(strs)):
            temp = ""
            if len(common_prefix) == 0:
                break
            for j in range(len(strs[i])):
                if j<len(common_prefix) and common_prefix[j] == strs[i][j]:
                    temp+=common_prefix[j]
                else:
                    break
            common_prefix = temp
        return common_prefix
