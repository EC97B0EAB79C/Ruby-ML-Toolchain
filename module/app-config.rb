# Load libraries
require "yaml"

##
# @module AppConfig
# Loads configuration from a YAML file
#
module AppConfig
  @config = nil

  ##
  # Loads the application configuration from a YAML file if not already loaded.
  #
  # @return [Hash] The loaded configuration as a hash.
  #
  def self.load_config
    @config ||= YAML.load_file "./config/config.yaml"
  end
end
