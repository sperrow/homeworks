class Queue
  def initialize
    # create ivar to store queue here!
    @queue = []
  end

  def enqueue(el)
    # adds an element to the queue
    @queue.unshift(el)
  end

  def dequeue
    # removes one element from the queue
    @queue.pop
  end

  def show
    # return a copy of the queue
    @queue
  end
end
