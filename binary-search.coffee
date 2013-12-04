binarySearch = (list, val) ->
  head = 0
  tail = list.length - 1
  middle = Math.floor (head + tail) / 2
  while list[middle] isnt val and head < tail
    head = middle + 1 if val > list[middle]
    tail = middle - 1 if val < list[middle]
      
    middle = Math.floor (head + tail) / 2

  if list[middle] is val then middle else -1