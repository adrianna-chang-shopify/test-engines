module Domain
  class Engine < ::Rails::Engine
    isolate_namespace Domain
  end
end
