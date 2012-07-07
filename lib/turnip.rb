Motion::Project::App.setup do |app|
  app.files << File.expand_path(File.join(File.dirname(__FILE__),'turnip/version.rb'))
  app.files << File.expand_path(File.join(File.dirname(__FILE__),'turnip/dsl.rb'))
  app.files << File.expand_path(File.join(File.dirname(__FILE__),'turnip/execute.rb'))
  app.files << File.expand_path(File.join(File.dirname(__FILE__),'turnip/define.rb'))
  # require gherkin
  app.files << File.expand_path(File.join(File.dirname(__FILE__),'turnip/builder.rb'))
  app.files << File.expand_path(File.join(File.dirname(__FILE__),'turnip/step_definition.rb'))
  app.files << File.expand_path(File.join(File.dirname(__FILE__),'turnip/placeholder.rb'))
  app.files << File.expand_path(File.join(File.dirname(__FILE__),'turnip/table.rb'))
  app.files << File.expand_path(File.join(File.dirname(__FILE__),'turnip/rspec.rb'))
  app.files << File.expand_path(File.join(File.dirname(__FILE__),'turnip.rb'))
end


# require "turnip/version"
# require "turnip/dsl"
# require "turnip/execute"
# require "turnip/define"
# require "turnip/builder"
# require "turnip/step_definition"
# require "turnip/placeholder"
# require "turnip/table"

module Turnip
  class Pending < StandardError; end
  class Ambiguous < StandardError; end

  ##
  #
  # The global step module, adding steps here will make them available in all
  # your tests.
  #
  module Steps
  end

  class << self
    attr_accessor :type
  end
end

Turnip.type = :turnip

Module.send(:include, Turnip::Define)

self.extend Turnip::DSL

# require "turnip/rspec"

