class Map
  def initialize
    @map = []
  end

  def assign(k, v)
    found = false
    @map.each_with_index do |el, i|
      if el[0] == k
        @map[i] = [k, v]
        found = true
      end
    end
    @map.push([k, v]) unless found
  end

  def lookup(k)
    found = nil
    @map.each do |el|
      found = el[1] if el[0] == k
    end
    found
  end

  def remove(k)
    @map.each_with_index do |el, i|
      if el[0] == k
        @map.delete(@map[i])
      end
    end
  end
end
