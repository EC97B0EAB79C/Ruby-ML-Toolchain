# Custom libraries
require_relative "./log.rb"

class SessionConfig
  @config = {}

  def self.model_repository=(data)
    @config[:model_repository] = data
  end

  def self.model_repository = @config[:model_repository] || AppConfig.model_repository
end
