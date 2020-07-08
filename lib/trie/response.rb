module RubyRoutesTrie
  class Response

    attr_reader :method, :route, :dynamic_value

    def initialize(method, route, dynamic_value)
      @dynamic_value = dynamic_value
      @route         = route
      @method        = method
    end
  end
end
