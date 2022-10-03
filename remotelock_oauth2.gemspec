# frozen_string_literal: true

require_relative "lib/omniauth/remotelock_oauth2/version"

Gem::Specification.new do |spec|
  spec.name = "omniauth-remotelock-oauth2"
  spec.version = Omniauth::Remotelock::Oauth2::VERSION
  spec.authors = ["viktor-shmigol"]
  spec.email = ["vitya.shmigol@gmail.com"]

  spec.summary = %(A RemoteLock OAuth2 strategy for OmniAuth 1.x)
  spec.description = %(A RemoteLock OAuth2 strategy for OmniAuth 1.x.)
  spec.homepage = "https://github.com/viktor-shmigol/omniauth-remotelock-oauth2"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/viktor-shmigol/omniauth-remotelock-oauth2"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency "omniauth-oauth2", "~> 1.8.0"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
