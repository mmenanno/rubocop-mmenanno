# frozen_string_literal: true

require_relative "../../lib/rubocop/mmenanno/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop-mmenanno-rails"
  spec.version = RuboCop::Mmenanno::VERSION
  spec.authors = ["Michael Menanno"]
  spec.email = ["michael@menanno.com"]

  spec.summary = "Rails addon for rubocop-mmenanno."
  spec.homepage = "https://github.com/mmenanno/rubocop-mmenanno"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.4"

  spec.metadata = {
    "homepage_uri" => spec.homepage,
    "source_code_uri" => spec.homepage,
    "changelog_uri" => "#{spec.homepage}/releases",
    "rubygems_mfa_required" => "true",
  }

  spec.files = Dir["lib/**/*"]
  spec.require_paths = ["lib"]

  spec.add_dependency("rubocop-mmenanno", RuboCop::Mmenanno::VERSION)
  spec.add_dependency("rubocop-rails", "~> 2.30")
end
