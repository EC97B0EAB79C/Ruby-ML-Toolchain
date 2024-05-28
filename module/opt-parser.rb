# Load libraries
require "optparse"

# Custom libraries
require "./module/log.rb"
require "./module/app-config.rb"

##
# @class OptParser
# Class parsing command-line options
#
module OptParser
  def self.parse
    options = {}

    parser = OptParser.new do |opts|
      opts.banner = "Usage: main.rb [options]"

      # Enable debug logs
      opts.on("-d", "--debug", "Show debug logs") do
        WorkerLog.logger_level = Logger::DEBUG
      end

      # Help message
      opts.on("-h", "--help", "Prints this help") do
        puts opts
        exit
      end
    end

    # Starts parser
    begin
      parser.parse!

      # Rescue error for invalid option
    rescue OptionParser::MissingArgument => e
      WorkerLog.log.error e.message
      WorkerLog.log.error parser
      exit
    end
    options
  end
end
