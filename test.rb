require_relative 'linked_lists'

list = LinkedList.new

puts "append 1, 2, 3..."
list.append(1)
list.append(2)
list.append(3)

puts "prepend 0..."
list.prepend(0)

puts "size: #{list.size}"

puts "elements:"
current_node = list.head
while current_node != nil
    puts current_node.value
    current_node = current_node.next_node
end

puts "Pop element..."
popped_node = list.pop
puts "size after popping: #{list.size}"

puts "checking if it contains 2: #{list.contains?(2)}"
puts "checking if it contains 5: #{list.contains?(5)}"

puts "find index of 2: #{list.find(2)}"
puts "find index of 5: #{list.find(5)}"

puts "insert 2.5 at index 2..."
list.insert_at(2.5, 2)
puts "size after insert: #{list.size}"

puts "remove value at index 2..."
removed_node = list.remove_at(2)
puts "size after removal: #{list.size}"

puts "final elements:"
current_node = list.head
while current_node != nil
    puts current_node.value
    current_node = current_node.next_node
end