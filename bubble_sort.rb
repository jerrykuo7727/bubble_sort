def bubble_sort(arr)
  size = arr.size
  (size-1).downto(0) do |i|
  	for j in (0...i) do
  	  if arr[j] > arr[j+1]
  	  	arr[j], arr[j+1] = arr[j+1], arr[j]
  	  end
  	end
  end
  arr
end

def bubble_sort_by(arr)
  size = arr.size
  (size-1).downto(0) do |i|
  	for j in (0...i) do
  	  compare = yield arr[j], arr[j+1]
  	  if compare > 0
  	  	arr[j], arr[j+1] = arr[j+1], arr[j]
  	  elsif compare == 0
  	  	if arr[j] > arr[j+1]
  	  	  arr[j], arr[j+1] = arr[j+1], arr[j]
  	  	end
  	  end
  	end
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])
sort_by = bubble_sort_by(["hi","hello","hey"]) do |left, right|
  left.length - right.length
end
p sort_by