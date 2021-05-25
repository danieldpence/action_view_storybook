# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "action_view/storybook/version"

Gem::Specification.new do |spec|
  spec.name          = "action_view_storybook"
  spec.version       = ActionView::Storybook::VERSION
  spec.authors       = ["Jon Palmer", "Daniel Pence"]
  spec.email         = []

  spec.summary       = "Storybook for Rails Partials"
  spec.description   = "Generate Storybook CSF JSON for rendering Rails View Partials in Storybook"
  spec.homepage      = "https://github.com/danieldpence/actionview_storybook"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "https://rubygems.org"

  #   spec.metadata["homepage_uri"] = spec.homepage
  #   spec.metadata["source_code_uri"] = "https://github.com/jonspalmer/view_component_storybook"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files = Dir["CHANGELOG.md", "LICENSE.txt", "README.md", "app/**/*", "lib/**/*"]

  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.5.0"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "relaxed-rubocop", "~> 2.5"
  spec.add_development_dependency "rspec", "~> 3.9"
  spec.add_development_dependency "rspec-rails", "~> 3.9"
  spec.add_development_dependency "rubocop", "~> 1.9"
  spec.add_development_dependency "rubocop-rails", "~> 2.9.1"
  spec.add_development_dependency "rubocop-rspec", "~> 2.1"
  spec.add_development_dependency "simplecov", "~> 0.18.5"
  spec.add_development_dependency "simplecov-console", "~> 0.9"
end
