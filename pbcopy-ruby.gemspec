# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "pbcopy-ruby"
  spec.version       = "0.1.0"
  spec.authors       = ["Unathi Chonco"]
  spec.email         = ["dev@unathichonco.com"]

  spec.summary       = "A simple gem to copy text to clipboard using pbcopy"
  spec.description   = "Provides a global pbcopy function to copy text to the system clipboard using the macOS pbcopy command"
  spec.homepage      = "https://github.com/choncou/pbcopy-ruby"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.glob(%w[lib/**/*.rb bin/* *.gemspec README.md LICENSE.txt CHANGELOG.md])
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rake", "~> 13.0"
end 