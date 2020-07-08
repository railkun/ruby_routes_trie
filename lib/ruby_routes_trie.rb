require_relative 'trie/trie'

module RubyRoutesTrie
  def self.new
    @trie = Trie.new
  end

  def self.add_route(method, route)
    @trie.add_route(method, route)
  end

  def self.find(route)
    @trie.find(route)
  end
end
