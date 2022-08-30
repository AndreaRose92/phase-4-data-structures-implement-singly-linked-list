require_relative './node'

class LinkedList
    
    attr_accessor :head

    def initialize
        @head = nil
    end

    def prepend(node)
        if head
            push_node = self.head
            self.head = node
            self.head.next_node = push_node
        else
            self.head = node
        end
    end

    def append(node)
        if head.nil?
          self.head = node
          return
        end
        last_node = head
        while last_node.next_node
          last_node = last_node.next_node
        end
        last_node.next_node = node
      end

      def delete_head
        if head
            node1 = head
            head = node1.next_node
        end
      end
end
