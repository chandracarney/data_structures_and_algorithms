class LinkedList
  attr_reader :head

  def count
    if @head == nil
      0
    else
      current_node = @head
      counter = 1
      while current_node.next_node
        counter += 1
        current_node = current_node.next_node
      end
      counter
    end
  end

  def push(data)
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      while current_node.next_node
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
  end
end

class Node
  attr_accessor :data, :next_node
  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end

  def push(data)
    if next_node
      next_node.push(data)
    else
      @next_node = Node.new(data)
    end
  end
end
