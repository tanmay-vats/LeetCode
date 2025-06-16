# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
    return true if root.nil?
    is_mirror(root.left, root.right)
end


def is_mirror(t1, t2)
    return true if t1.nil? && t2.nil?
    return false if t1.nil? || t2.nil?
    return false if t1.val != t2.val

    is_mirror(t1.left, t2.right) && is_mirror(t1.right, t2.left)
end
