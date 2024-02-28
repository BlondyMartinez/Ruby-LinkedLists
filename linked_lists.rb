class LinkedList
    def initialize
        @head = nil
    end

    def append(value) 
        return @head = Node.new(value) if @head.nil?
        tail.next_node = Node.new(value)
    end

    def prepend(value)
        append(value) if @head.nil?

        node = Node.new(value)
        node.next_node = @head
        @head = node
    end

    def size
        return 0 if @head.nil?

        node = @head
        counter = 1

        until node.next_node.nil?
            counter += 1
            node = node.next_node
        end

        return counter
    end

    def head
        return nil if @head.nil?
        @head
    end

    def tail(node = @head)
        return node if node.next_node.nil?
        tail(node.next_node)
    end

    def at(index, node = @head, counter = 0)
        return node.value if counter == index

        at(index, node.next_node, counter + 1)
    end

    def pop(node = @head)
        return node.next_node = nil if node.next_node.next_node.nil?

        pop(node.next_node)
    end

    def contains?(value, node = @head)
        return true if value == node.value
        return false if node.next_node.nil?

        contains?(value, node.next_node)
    end

    def find(value, node = @head, index = 0)
        return index if value == node.value

        find(value, node.next_node, index + 1)
    end

    def to_s(node = @head, str = '')
        return str += `(#{node.value})` if node.next_node.nil?

        to_s(node.next_node, str + `(#{node.value}) -> `)
    end

    def insert_at(value, index)
    end

    def remove_at(index)
    end
end

class Node
    attr_accessor :value, :next_node

    def initialize(value = nil, next_node = nil)
        @value = value
        @next_node = next_node
    end
end