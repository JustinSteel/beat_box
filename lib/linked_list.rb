class LinkedList
    attr_reader :head
    def initialize
        @head = nil
        # @current_node = current_node
        
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
    def incert(position, string)
        
    end
end

