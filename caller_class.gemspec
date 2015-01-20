lib = File.expand_path('../lib', __FILE__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'caller_class/version'

Gem::Specification.new do |spec|
  spec.name          = 'caller_class'
  spec.version       = CallerClass::VERSION
  spec.authors       = ['kami']
  spec.email         = ['kami30k@gmail.com']
  spec.summary       = %q{Get caller class name that is calling from the body of a class definition.}
  spec.description   = %q{Get caller class name that is calling from the body of a class definition.}
  spec.homepage      = 'https://github.com/kami30k/caller_class'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
