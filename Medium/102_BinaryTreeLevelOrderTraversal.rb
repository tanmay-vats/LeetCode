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
# @return {Integer[][]}
def level_order(root)
    return [] if root.nil?

    result = []
    queue = [root]

    until queue.empty?
        level_size = queue.size
        level = []

        level_size.times do
            node = queue.shift
            level << node.val
            queue << node.left if node.left
            queue << node.right if node.right
        end

        result << level
    end

    result
end
