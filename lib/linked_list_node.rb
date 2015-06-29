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

  def self.reverse_list(list)
    # ADD CODE HERE
    stack = Stack.new
    while list
      # ADD CODE HERE
      stack.push(list)
      list = list.next_node
    end
    # ADD CODE HERE
    stack.pop
  end
end
