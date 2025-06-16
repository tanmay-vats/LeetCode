# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    prev = nil
    curr = head

    while curr
        next_node = curr.next
        curr.next = prev
        prev = curr
        curr = next_node
    end

    prev
end
