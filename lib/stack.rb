class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  # Push an item onto the stack
  def push(element)
    # IMPLEMENT ME!
    if @data.nil?
      @data = LinkedListNode.new(element.value, nil)
    else
      @data = LinkedListNode.new(element.value, @data)
    end
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return it to the user
  def pop
    # IMPLEMENT ME
    # popped = @data.value
    popped = LinkedListNode.new(@data.value, @data.next_node)
    @data = @data.next_node
    popped
  end
end
