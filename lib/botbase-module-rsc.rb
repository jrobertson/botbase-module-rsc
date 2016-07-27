#!/usr/bin/env ruby

# file: botbase-module-rsc.rb

# A service module used by the BotBase gem

require 'rsc'


class BotBaseModuleRSC
  
  def initialize(host: nil, package_src: nil, alias_file: nil)
    
    @rsc = RSC.new(host, package_src)
    @alias_file = alias_file

  end

  def query(s)
    r = @rsc.gg.execute_command @alias_file, String.new(s)
    r != 'job not found' ? r : nil
  end

end
