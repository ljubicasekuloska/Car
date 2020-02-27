require_relative 'lib/car/version'

Gem::Specification.new do |spec|
  spec.name          = "car"
  spec.version       = Car::VERSION
  spec.authors       = ["ljubicasekuloska"]
  spec.email         = ["ljubicasekuloska@gmail.com"]

  spec.summary       = %q{Creates a class Car}
  spec.description   = %q{Creates a class Car with year, color and model atributes. Then alow to change color, and drive the car}
  spec.homepage      = "https://github.com/ljubicasekuloska/git-homework"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/ljubicasekuloska/git-homework"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ljubicasekuloska/git-homework"
  spec.metadata["changelog_uri"] = "https://github.com/ljubicasekuloska/git-homework"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
