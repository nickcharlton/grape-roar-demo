require 'rubygems'

ENV['RAILS_ENV'] = 'test'

require File.expand_path('../../config/environment', __FILE__)

require 'rspec/rails'
RSpec.configure do |config|
  config.mock_with :rspec
  config.expect_with :rspec
  config.include RSpec::Rails::RequestExampleGroup, type: :request,
                                                    file_path: /spec\/api/
end
