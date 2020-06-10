# frozen_string_literal: true

require_relative "lib/graphql/version"

Gem::Specification.new do |spec|
  spec.name        = "graphql"
  spec.version     = Graphql::VERSION
  spec.authors     = %w(Shopify)
  spec.email       = %w(developers@shopify.com)
  spec.homepage    = "https://github.com/shopify/"
  spec.summary     = "GraphQL engine"
  spec.description = "Everything related to GraphQL should live in this engine"
  spec.license     = "Shopify"

  spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/shopify//blob/master/CHANGELOG.md"

  spec.add_dependency "rails"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
end
