lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'ruby_routes_trie'
  s.version     = '1.0.1'
  s.date        = '2020-07-08'
  s.summary     = 'RubyRoutesTrie - Simple gem for create trie routes'
  s.author      = 'Oleksii Protsenko'
  s.homepage    = 'https://github.com/railkun/ruby_routes_trie'
  s.license     = 'MIT'
  s.files       = ["lib/ruby_routes_trie.rb"]
end
