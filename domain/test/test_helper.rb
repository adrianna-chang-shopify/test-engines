# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require_relative "../../config/environment"
ActiveRecord::Migrator.migrations_paths = [File.expand_path("../../db/migrate", __dir__)]
ActiveRecord::Migrator.migrations_paths << File.expand_path('../db/migrate', __dir__)
require "rails/test_help"

# Filter out the backtrace from minitest while preserving the one from other libraries.
Minitest.backtrace_filter = Minitest::BacktraceFilter.new


# Load fixtures from the engine
if ActiveSupport::TestCase.respond_to?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path("fixtures", __dir__)
  ActionDispatch::IntegrationTest.fixture_path = ActiveSupport::TestCase.fixture_path
  ActiveSupport::TestCase.file_fixture_path = ActiveSupport::TestCase.fixture_path + "/files"
  ActiveSupport::TestCase.fixtures :all
end
