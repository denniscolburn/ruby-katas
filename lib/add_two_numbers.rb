require './list_node'

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    output = ListNode.new
    input_list_nodes = [l1, l2]
    list_node_values = []

    input_list_nodes.each do |list_node|
        number_reversed = ""
        elements = list_node.return_node_values_array
        number_reversed = elements.join("").reverse
        list_node_values << number_reversed
    end

    sum = list_node_values[0].to_i + list_node_values[1].to_i
    sum_reversed = sum.to_s.reverse.chars
    sum_reversed.each do |number|
        output.append(number)
    end
    
    output

end

l1 = ListNode.new
l1.append(2)
l1.append(4)
l1.append(3)

l2 = ListNode.new
l2.append(5)
l2.append(6)
l2.append(4)

output = add_two_numbers(l1, l2)
p output

  





# while (! l1.is_empty?)
#     # number = l1.head.value.to_s
#     # number_reversed += number
#     # puts number_reversed
#     # l1.delete(number)
#     number = l1.find_tail.value.to_s
#     number_reversed += number
#     puts number_reversed
#     l1.delete(number)
# end

# puts number_reversed


# l2 = ListNode.new
# l2.append(5)
# l2.append(6)
# l2.append(4)
# p l2

