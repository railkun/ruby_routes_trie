module RubyRoutesTrie
  class RouteNotExist < StandardError
    def message
       "This route not exist"
    end
  end
end
