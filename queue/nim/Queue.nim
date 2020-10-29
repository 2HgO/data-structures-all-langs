## Author: Oghogho Odemwingie
## This implementation uses a Doubly Linked List as the underlying data structure

include "../../linkedlist/doubly/nim/DoublyLinkedList"

type
  Queue*[T] = ref QueueObj[T] ## This represents the template for the queue
  QueueObj*[T] = object
    linkedlist : DoublyLinkedList[T] ## The underlying data structure that drives the queue

func newQueue*[T](driver : DoublyLinkedList[T] = newDoublyLinkedList[T]()) : Queue[T] {.inline.} =
  ## Returns a new queue of type `T`
  result = Queue[T](linkedlist : driver)

func enqueue*[T](q : Queue[T], e : T) : void {.inline.} =
  ## Add element `e` to back of the queue
  q.linkedlist.addLast(e)

func dequeue*[T](q : Queue[T]) : T {.inline.} =
  ## Removes and returns the element at the front of the queue
  result = q.linkedlist.removeFirst()

func peek*[T](q : Queue[T]) : T {.inline, raises: [ResourceExhaustedError].} =
  ## Returns the element at the front of the queue
  result = q.linkedlist.peek()
