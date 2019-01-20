def bubble_sort(arr)
  i=0
    while i<arr.length
      j=0
      while j<arr.length-2
        if arr[j]>arr[j+1]
          arr[j+1],arr[j] = arr[j],arr[j+1]
        end
      j+=1
      end
    i+=1
    end
    return arr
end
a = [23,4,65,87,909]
sorted_array = bubble_sort(a)
print "#{sorted_array}"
