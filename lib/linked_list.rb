class LinkedList
  attr_reader :head
  def initialize
    @head = nil
    
  end

  def append(data)
    new_node = Node.new(data)
    if @head.nil?
       @head = new_node
    else 
      current_node =  @head
      until current_node.next_node.nil?
        current_node = current_node.next_node 
      end
      current_node.next_node = new_node
    end
  end

  def count
    i = 0
    if @head.nil?
      i = 0
    elsif current_node = @head
      i = 1
      until current_node.next_node.nil?
        current_node = current_node.next_node 
        i += 1
      end
      i
      
    end
  end

  def to_string 
    current_node = @head
    node_house = ""
    if @head.nil?
      "This is empty"
    else 
      while current_node != nil
        node_house += "#{current_node.data} "
        current_node = current_node.next_node 
      end 
    end
    node_house.strip
  end

  def prepend(data)
    new_node = Node.new(data)
    if @head.nil?
       @head = new_node
    else 
      new_node.next_node = @head
      @head = new_node
    end
  end

  def insert(position, data)
    new_node = Node.new(data)
    current_node = @head
    counter = 0 
    prev_node = @head
    if @head.nil? || position == 0
      new_node.next_node = @head #New guy knows about the old guy he steped in front of
      @head = new_node #the new guy is the first guy
      current_node = @head

    elsif position <= count
      until position == counter
        current_node = current_node.next_node
        counter += 1
      end
      new_node.next_node = current_node
      counter = 0
      until (position -1) == counter
        prev_node = prev_node.next_node
        counter += 1
      end
      prev_node.next_node = new_node

    elsif position > count
    "You cant put a node in position #{position} because there are only #{count} nodes in this list"
    end
  end

  def find(position, length)
    node_house = " "
    counter = 1
    current_node = @head
    if @head.nil?
      "empty list"
    else
      until counter > position + length
        node_house += "#{current_node.data} " if counter > position
        current_node = current_node.next_node
        counter += 1
      end
      node_house.strip
    end
  end

  def includes?(string)
    current_node = @head
    if @head.nil?
      "empty list"
    else 
      until current_node.data == string
        current_node.next_node = current_node
        return false
      end
    end
    true
  end

  def pop
    return_data = ""
    if head.next_node.nil?
    return_data += head.data
    @head = nil
    else
    current_node = @head
      until current_node.next_node.next_node.nil?
        current_node = current_node.next_node
        
      end
    return_data += current_node.next_node.data
    current_node.next_node = nil
    end
    return_data
  end
end
