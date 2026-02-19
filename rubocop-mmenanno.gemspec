# frozen_string_literal: true

require_relative "lib/rubocop/mmenanno/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop-mmenanno"
  spec.version = RuboCop::Mmenanno::VERSION
  spec.authors = ["Michael Menanno"]
  spec.email = ["michael@menanno.com"]

  spec.summary = "Personal RuboCop configuration for mmenanno projects."
  spec.homepage = "https://github.com/mmenanno/rubocop-mmenanno"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.4"

  spec.metadata = {
    "homepage_uri" => spec.homepage,
    "source_code_uri" => spec.homepage,
    "changelog_uri" => "#{spec.homepage}/releases",
    "default_lint_roller_plugin" => "RuboCop::Mmenanno::Plugin",
    "rubygems_mfa_required" => "true",
  }

  spec.files = Dir["config/**/*", "lib/**/*", "LICENSE.txt", "README.md", "VERSION"]
  spec.require_paths = ["lib"]

  spec.add_dependency("lint_roller", "~> 1.1")
  spec.add_dependency("rubocop", ">= 1.75", "< 3.0")
  spec.add_dependency("rubocop-minitest", "~> 0.37")
  spec.add_dependency("rubocop-performance", "~> 1.24")
  spec.add_dependency("rubocop-thread_safety", "~> 0.6")
end
