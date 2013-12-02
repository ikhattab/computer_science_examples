class Queue
  first: -1
  last: -1
  data: []
 
  enqueue: (val)->
    @last++
    @data[@last] = val
  
  dequeue: ->
    return false if @isEmpty()
    @first++
    @data[@first]
  
  isEmpty: -> @first is @last
  
