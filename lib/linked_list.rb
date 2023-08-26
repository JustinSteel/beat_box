class LinkedList
    attr_reader :head
    def initialize
        @head = nil
    end
    def append(data)
        node = Node.new(data)
        if @next_node == nil
            node = @head
        end
    end
end