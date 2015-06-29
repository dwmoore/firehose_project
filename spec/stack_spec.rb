require 'spec_helper'

describe Stack do

  describe '#push' do
    it 'adds elements to the stack' do
      node1 = LinkedListNode.new(37)
      node2 = LinkedListNode.new(99, node1)
      node3 = LinkedListNode.new(12, node2)
      stack = Stack.new

      stack.push(node3)
      stack.push(node2)
      stack.push(node1)

      expect(stack.data.value).to eq 37

    end
  end

  describe '#pop' do
    it 'removes elements from the stack' do
      node1 = LinkedListNode.new(37)
      node2 = LinkedListNode.new(99, node1)
      node3 = LinkedListNode.new(12, node2)
      stack = Stack.new
      stack.push(node3)
      stack.push(node2)
      stack.push(node1)

      element1 = stack.pop
      element2 = stack.pop
      element3 = stack.pop

      expect(element1.value).to eq 37
      expect(element2.value).to eq 99
      expect(element3.value).to eq 12

    end
  end
end
