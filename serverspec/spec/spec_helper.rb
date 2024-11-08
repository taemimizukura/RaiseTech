# frozen_string_literal: true

# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'spec_helper'

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)

# Prevent database truncation if the environment is production
abort('The Rails environment is running in production mode!') if Rails.env.production?

# Setup all the directories for spec files
Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

# Run all migrations before tests
ActiveRecord::Migration.maintain_test_schema!

# Configure RSpec
RSpec.configure do |config|
  # Enables expectations in RSpec
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # Enables mocks in RSpec
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # Show the test result on screen (and in CI logs) with the format you prefer
  config.formatter = :documentation

  # The next line ensures that tests are run in random order to expose order dependencies.
  config.order = :random

  # Seed for random order of tests
  Kernel.srand config.seed
end
