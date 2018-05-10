### compare linked lists

class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    if @head
      find_tail.next = Node.new(value)
    else
      @head = Node.new(value)
    end
  end

  def find_tail
    node = @head

    return node if !node.next
    return node if !node.next while (node = node.next)
  end

  def append_after(target, value)
    node           = find(target)

    return unless node

    old_next       = node.next
    node.next      = Node.new(value)
    node.next.next = old_next
  end

  def find(value)
    node = @head

    return false if !node.next
    return node  if node.value == value

    while (node = node.next)
      return node if node.value == value
    end
  end

  def delete(value)
    if @head.value == value
      @head = @head.next
      return
    end

    node      = find_before(value)
    node.next = node.next.next
  end

  def find_before(value)
    node = @head

    return false if !node.next
    return node  if node.next.value == value

    while (node = node.next)
      return node if node.next && node.next.value == value
    end
  end

  def print
    node = @head
    puts node

    while (node = node.next)
      puts node
    end
  end
end

class Node
  attr_accessor :next
  attr_reader   :value

  def initialize(value)
    @value = value
    @next  = nil
  end

  def to_s
    "Node with value: #{@value}"
  end
end

list1 = LinkedList.new
list2 = LinkedList.new

list1.append('g')
list1.append('e')
list1.append('e')
list1.append('k')
list1.append('s')
list1.append('a')

list1.print

list2.append('g')
list2.append('e')
list2.append('e')
list2.append('k')
list2.append('s')
list2.append('b')

list2.print

list1.find('g')

def compare(list_1, list_2)

end

p compare(list1, list2)


