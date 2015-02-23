class LinkedList
  attr_reader :head

  def count
    if head.nil?
      0
    else
      current_node = head
      counter = 1
      while current_node.next_node
        counter += 1
        current_node = current_node.next_node
      end
      counter
    end
  end

  def push(data)
    if head.nil?
      @head = Node.new(data)
    else
      current_node = head
      while current_node.next_node
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
  end

  def pop
    current_node = head
    last_node = nil
    while current_node.next_node
      last_node = current_node
      current_node = current_node.next_node
    end
    if last_node.nil?
      @head = nil
    else
      last_node.next_node = nil
    end
    current_node.data
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
