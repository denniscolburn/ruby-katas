require './node'

class ListNode

    def initialize
        @head = nil
    end

    def is_empty?
        @head == nil
    end

    def append(value)
        if @head
            find_tail.next = Node.new(value)
        else
            @head = Node.new(value)
        end
    end

    def return_node_values_array
        elements = []
        current_node = @head
        elements << current_node.value
        while current_node.next != nil
            elements << current_node.next.value
            current_node = current_node.next
        end
        elements
    end

    def find_tail
        node = @head

        return node if !node.next
        return node if !node.next while (node = node.next)
    end

    def append_after(target, value)
        node = find(target)

        return unless node

        old_next = node.next
        node.next = Node.new(value)
        node.next.next = old_next
    end

    def find(value)
        node = @head
        
        return false if !node.next
        return node if node.value == value

        while (node = node.next)
            return node if node.value == value
        end
    end

    def delete(value)
        if @head.value == value
            @head = @head.next
            return
        end

        node = find_before(value)
        node.next = node.next.next
    end

    def find_before(value)
        node = @head

        return false if !node.next
        return node if node.next.value == value

        while (node = node.next)
            return node if node.next && node.next.value == value
        end
    end

end