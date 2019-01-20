def bubble_sort_by(arr)
  i=0
    while i<arr.length
      j=0
      while j<arr.length-1
        if yield(arr[j],arr[j+1])>0
          arr[j+1],arr[j] = arr[j],arr[j+1]
        end
      j+=1
      end
    i+=1
    end
    print arr
end
bubble_sort_by (["hi","hello","hey"]) do |left,right|
  left.length-right.length
end
