Node = require './node'
class LinkedList
  head: null
  print: ->
    i = @head
    while i isnt null
      console.log i
      i = i.next
    return false
 
  add: (value, index) ->
    node = new Node value
    if index is 0
      node.next = @head
      @head = node
    else
      i = @head
      for c in [0...index-1] by 1
        i = i.next
      node.next = i.next
      i.next = node

 
  remove: (index) ->
    if index is 0
      @head = @head.next
    else
      i = @head
      for c in [0...index-1]
        i = i.next
      j = i.next
      i.next = j.next

  