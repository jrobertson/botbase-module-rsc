#!/usr/bin/env ruby

# file: botbase-module-rsc.rb

# A service module used by the BotBase gem

require 'rsc'
require 'shellwords'


class BotBaseModuleRSC
  
  def initialize(host: nil, package_src: nil, alias_file: nil)
    
    @rsc = RSC.new(host, package_src)
    @alias_file = alias_file

  end

  def query(s, package=:gg, job=:execute_command)
    
    r = @rsc.send(package).method(job).call \
              @alias_file, *Shellwords::shellwords(s)
    r != 'job not found' ? r : nil
    
  end

end