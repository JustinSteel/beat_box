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
    def insert(position, data)
        new_node = Node.new(data)
        if @head.nil? || position == 0
            new_node.next_node = @head #New guy knows about the old guy he steped in front of
           @head = new_node #the new guy is the first guy
        else
            current_node = @head #pointer starting at the begining of list
        (position - 1).times do # go to the position and then back one for new guy to insert himself into
             if current_node.next_node.nil? # If you get to the end of the line stop
                break
                current_node = current_node.next_node # move to next guy
             end
            end
        end
        if current_node != nil
            new_node.next_node = current_node.next_node #make New guy know about guy behind 
            current_node.next_node = new_node #make the guy in front reference the new guy 
        end
    end
    def find(position, length)
        node_house = ""
        counter = 1
        current_node = @head
        if @head.nil?
            "empty list"
        else 
            until counter > position + length
            node_house += "#{current_node.data}" if counter > position
            current_node = current_node.next_node
            counter += 1
            end    
        end
        node_house.strip
    end


end
