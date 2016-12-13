def merge_sort(list)
  return list if list.length <= 1

  left  = Array.new
  right = Array.new

  list.length.times { |i| i < list.length/2 ? left << list[i] : right << list[i] }

  left  = break_apart(left)  if left.length  > 1
  right = break_apart(right) if right.length > 1

  merge(left, right)
end

def merge(left, right, list=Array.new)
  until left.empty? && right.empty?
    case
    when left.empty?  && !right.empty? then list << right.slice!(0)
    when !left.empty? && right.empty?  then list << left.slice!(0)
    when left[0] >  right[0]           then list << right.slice!(0)
    when left[0] <= right[0]           then list << left.slice!(0)
    end
  end

  list
end
