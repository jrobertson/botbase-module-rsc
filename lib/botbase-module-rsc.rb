#!/usr/bin/env ruby

# file: botbase-module-rsc.rb

# A service module used by the BotBase gem

require 'rsc'
require 'shellwords'


class BotBaseModuleRSC
  
  def initialize(host: nil, package_src: nil, alias_file: nil, package: :gg, 
                 job: :execute_command)
    
    @rsc = RSC.new(host, package_src)
    @alias_file = alias_file
    @package, @job = @rsc.send(package), job

  end

  def query(s)
    
    r = @package.method(@job).call *Shellwords::shellwords(s)
    r != 'wjob not found' ? r : nil
    
  end

end