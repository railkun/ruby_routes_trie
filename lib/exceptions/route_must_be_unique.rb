module RubyRoutesTrie
  class RouteMustBeUnique < StandardError
    def message
       "This route element must be unique"
    end
  end
end
