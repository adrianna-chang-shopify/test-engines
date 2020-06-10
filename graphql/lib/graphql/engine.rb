module Graphql
  class Engine < ::Rails::Engine
    isolate_namespace Graphql
    config.generators.api_only = true
  end
end
