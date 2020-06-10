# frozen_string_literal: true

require_relative "lib/domain/version"

Gem::Specification.new do |spec|
  spec.name        = "domain"
  spec.version     = Domain::VERSION
  spec.authors     = %w(Shopify)
  spec.email       = %w(developers@shopify.com)
  spec.homepage    = "https://github.com/shopify/"
  spec.summary     = "Business logic engine"
  spec.description = "Everything related to business logic should live in this engine"
  spec.license     = "Shopify"

  spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/shopify//blob/master/CHANGELOG.md"

  spec.add_dependency "rails"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
end
