
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "auth_trail/version"

Gem::Specification.new do |spec|
  spec.name          = "authtrail"
  spec.version       = AuthTrail::VERSION
  spec.authors       = ["Andrew Kane", "JoeWallCrypt0"]
  spec.email         = ["hericrypto@protonmail.com"]

  spec.summary       = "Track Devise login activity"
  spec.homepage      = "https://github.com/P-Gambit/authtrail"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 5"
  spec.add_dependency "warden"
  spec.add_dependency "geocoder"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
