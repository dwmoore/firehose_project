require 'spec_helper'

describe LinkedListNode do
  describe '.print_values' do
    it 'prints a list of linked list nodes' do
      node1 = LinkedListNode.new(37)
      node2 = LinkedListNode.new(99, node1)
      node3 = LinkedListNode.new(12, node2)

      expect{ LinkedListNode.print_values(node3) }.to output("12 --> 99 --> 37 --> nil\n").to_stdout
    end
  end

  describe '.reverse_list' do
    it 'reverses a linked list' do
      node1 = LinkedListNode.new(37)
      node2 = LinkedListNode.new(99, node1)
      node3 = LinkedListNode.new(12, node2)

      reversed1 = LinkedListNode.reverse_list(node3)
      reversed2 = reversed1.next_node
      reversed3 = reversed2.next_node

      expect(reversed1.value).to eq 37
      expect(reversed2.value).to eq 99
      expect(reversed3.value).to eq 12
    end
  end
end
