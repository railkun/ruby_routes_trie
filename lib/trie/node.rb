module RubyRoutesTrie
  class Node
    DYNAMIC = 1
    STATIC = 0

    attr_reader :value, :children

    attr_accessor :method, :route, :type

    def initialize(value)
      @children      = []
      @value         = value
      @method        = ''
      @route         = ''
      @type          = value[0] == ':' ? DYNAMIC : STATIC
    end

    def dynamic?
      @type == DYNAMIC
    end
  end
end
