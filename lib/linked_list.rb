class LinkedList
    attr_reader :head, :current_node
    def initialize
        @head = nil
        @current_node = current_node
    end
    def append(data)
        new_node = Node.new(data)
        if @head = nil
           @head = new_node
        else 
            current_node =  @head
            until current_node.next_node.nil?
                current_node = current_node.next_node 
        end
          current_node.next_node = new_node
        end
    end
end

