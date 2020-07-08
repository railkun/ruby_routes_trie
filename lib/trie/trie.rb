require_relative '../exceptions/route_must_be_unique'
require_relative '../exceptions/route_not_exist'
require_relative 'node'
require_relative 'response'

module RubyRoutesTrie
  class Trie
    def initialize
      @root = Node.new("/")
    end

    def add_route(method, route)
      levels                     = levels_split(route)

      raise RouteMustBeUnique if valid?(levels)

      base                       = @root
      levels.each { |level| base = add_attributes(level, base.children) }
      base.method                = method
      base.route                 = route
    end

    def find(route)
      find_route(route) do |found, base|
        raise RouteNotExist unless found && base.route.empty? == false
      end
    end

    private

    def levels_split(route)
      route.split('/').reject { |e| e.to_s.empty? }
    end

    def valid?(levels)
      levels.find_all {|level| levels.count(level) > 1}.any?
    end

    def add_attributes(value, trie)
      trie.find {|n| n.value == value} || add_node(value, trie)
    end

    def add_node(value, trie)
      Node.new(value).tap { |new_node| trie << new_node }
    end

    def find_route(route)
      levels             = levels_split(route)
      base               = @root
      dynamic_value      = {}
      route_found        = levels.all? { |level| base = find_attributes(level, base.children, dynamic_value) }

      yield route_found, base if block_given?
      response(base.method, base.route, dynamic_value)
    end

    def response(method, route, dynamic_value)
      Response.new(method, route, dynamic_value)
    end

    def find_attributes(value, trie, dynamic_value)
      trie.sort_by{ |n| n.type }.find do |n|
        if n.dynamic?
          dynamic_value[n.value] = value
          true
        else
          n.value == value
        end
      end
    end
  end
end
