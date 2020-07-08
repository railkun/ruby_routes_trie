Gem::Specification.new do |s|
  s.name          = 'ruby_routes_trie'
  s.version       = '1.0.2'
  s.date          = '2020-07-08'
  s.summary       = 'RubyRoutesTrie - Simple gem for create trie routes'
  s.author        = 'Oleksii Protsenko'
  s.homepage      = 'https://github.com/railkun/ruby_routes_trie'
  s.license       = 'MIT'
  s.files         = [ 'lib/ruby_routes_trie.rb',
                      'lib/trie/trie.rb',
                      'lib/trie/node.rb',
                      'lib/trie/response.rb',
                      'lib/exceptions/route_must_be_unique.rb',
                      'lib/exceptions/route_not_exist.rb'
                    ]
end
