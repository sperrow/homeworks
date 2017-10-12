def sluggish_octopus(arr)
  arr.each do |word1|
    longest = true
    arr.each do |word2|
      if word2.length > word1.length
        longest = false
      end
    end

    return word1 if longest
  end
end

def merge_sort(arr)
  return arr if arr.length < 2
  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..-1])
  sorted = []
  until left.empty? || right.empty?
    if left[0].length < right[0].length
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted + left + right
end

def dominant_octopus(arr)
  merge_sort(arr)[-1]
end

def clever_octopus(arr)
  longest = arr[0]
  arr.each do |str|
    longest = str if str.length > longest.length
  end
  longest
end

fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

puts "sluggish_octopus: #{sluggish_octopus(fishes)}"
puts "dominant_octopus: #{dominant_octopus(fishes)}"
puts "clever_octopus: #{clever_octopus(fishes)}"

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left", "left-up"]

def slow_dance(direction, tiles)
  tiles.index(direction)
end

tiles_hash = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def fast_dance(direction, tiles)
  tiles[direction]
end

puts "up: #{slow_dance("up", tiles_array)}"
puts "right-down: #{slow_dance("right-down", tiles_array)}"
puts "up: #{fast_dance("up", tiles_hash)}"
puts "right-down: #{fast_dance("right-down", tiles_hash)}"
