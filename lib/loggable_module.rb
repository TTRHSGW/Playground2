module Loggable
  PREFIX = '[LOG]'.freeze

  module_function
    def log(text)
      puts "#{PREFIX} #{text}"
    end

end
