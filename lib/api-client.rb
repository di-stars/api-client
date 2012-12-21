require "api-client/version"

# High Level Namespace of the library ApiClient.
module ApiClient
  autoload :Exceptions, 'api-client/exceptions'
  autoload :Errors, 'api-client/errors'
  autoload :Configuration, 'api-client/configuration'
  autoload :Base, 'api-client/base'
  autoload :Dispatcher, 'api-client/dispatcher'
  autoload :Parser, 'api-client/parser'

  # Configures global settings
  #   ApiClient.configure do |config|
  #     config.url_path = "api.example.com"
  #   end
  def self.configure(&block)
    yield @config ||= Configuration.new
  end

  # Global settings for ApiClient
  def self.config
    @config
  end

  configure do |config|
    config.url_path = nil
  end
end
