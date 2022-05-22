class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def reverse_list(head)
  previous = nil
  current = head

  until current.nil?
    next_node = current.next
    current.next = previous
    previous = current
    current = next_node
  end

  previous
end

def print_linkedlist(head)
  current = head
  puts current
  until current.nil?
    print current.val.to_s + "\t"
    current = current.next
  end
end

def test_case_1
  a = ListNode.new(1)
  b = ListNode.new(2)
  c = ListNode.new(3)
  d = ListNode.new(4)
  e = ListNode.new(5)
  a.next = b
  b.next = c
  c.next = d
  d.next = e
  print_linkedlist a
  puts

  reversed = reverse_list(a)
  print_linkedlist reversed
end

test_case_1
