
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "frappe_charts/version"

Gem::Specification.new do |spec|
  spec.name          = "frappe_charts"
  spec.version       = FrappeCharts::VERSION
  spec.authors       = ["Pablo Acuna"]
  spec.email         = ["pabloacuna88@gmail.com"]

  spec.summary       = %q{Frappé Charts Ruby gem for Rails.}
  spec.homepage      = "https://github.com/pacuna/frappe_charts"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
