class CircularQueue
  first: -1
  last: -1
  
  constructor: (@size) ->
    @data = new Array(size)
 
  enqueue: (val)->
    @last = (@last+1) % (@size)
    @data[@last] = val
  
  dequeue: ->
    return false if @isEmpty()
    @first = (@first+1) % (@size)
    temp = @data[@first]
    @first = @last = -1 if @first is @last
    return temp
  
  isEmpty: -> @first is @last is -1
  