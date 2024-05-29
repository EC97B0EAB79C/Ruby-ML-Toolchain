# Custom libraries
require_relative "./ml-toolchain/utils/app-config.rb"
require_relative "./ml-toolchain/utils/opt-parser.rb"
require_relative "./ml-toolchain/utils/log.rb"
require_relative "./ml-toolchain/utils/session-config.rb"

begin
  arg_options = OptParser.parse

  unless arg_options[:cmd].empty?
    Log.log.info "Starting #{arg_options[:cmd]}"
  else
    Log.log.info "No task set. Starting interactive mode"
  end
end
