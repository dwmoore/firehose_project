class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def self.print_values(list_node)
    print "#{list_node.value} --> "
    if list_node.next_node.nil?
      print "nil\n"
      return
    else
      print_values(list_node.next_node)
    end
  end

  def self.reverse_list(list, previous = nil)
      reversed_list = LinkedListNode.new(list.value, previous)
      return reversed_list if list.next_node.nil?
      list = list.next_node
      LinkedListNode.reverse_list(list, reversed_list)
  end
end
