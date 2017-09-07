require 'logger'

logger = Logger.new(STDOUT) # standard output
logger.info "This is an info message"
logger.debug "This is a debugging message"
