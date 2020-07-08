require_relative 'trie/trie'

module RubyRoutesTrie
  def self.add_route(method, route)
    @trie = Trie.new
    @trie.add_route(method, route)
  end

  def self.find(route)
    @trie.find(route)
  end
end
