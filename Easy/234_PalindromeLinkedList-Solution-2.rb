# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}

def is_palindrome(head)
    # This approach will throw Time limit exceeded error if link list is very long.
    # But we can explore the possibility of string concatenate if list is small.
    # We can use Array instead of string concatenate. That will not throw error.
    str = ''
    while head
        str = "#{str}#{head.val}"
        head = head.next
    end
    str == str.reverse
end
