class LRUCache
  def initialize(max_size)
    @cache = []
    @max_size = max_size
  end

  def count
    # returns number of elements currently in cache
    @cache.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    @cache.delete(el) if @cache.include?(el)
    @cache << el
    @cache.shift if count > @max_size
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @cache
  end
end
