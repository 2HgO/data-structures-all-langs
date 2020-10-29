"""
  Author: Oghogho Odemwingie
"""

include("../../linkedlist/doubly/julia/DoublyLinkedList.jl"); using .DoublyLinkedList

"""
This represents the template for the queue
"""
struct Queue{T}
  linkedlist :: LinkedList{T}

  """
  Returns a new queue of type `T`
  """
  Queue{T}(;driver::LinkedList{T} = LinkedList{T}()) where T = new(LinkedList{T}())
end


"""
Add element `e` to back of the queue
"""
function enqueue!(q::Queue{T}, e::T) where T
  addLast!(q.linkedlist, e)
end

"""
Removes and returns the element at the front of the queue
"""
function dequeue!(q::Queue{T}) :: T where T
  removeFirst!(q.linkedlist)
end

Base.peek(q::Queue{T}, ::Type{T}) where T = peek(q.linkedlist)
Base.peek(q::Queue{T}) where T = peek(q.linkedlist)
