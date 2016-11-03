#!/usr/bin/env ruby

# file: botbase-module-rsc.rb

# A service module used by the BotBase gem

require 'rsc'


class BotBaseModuleRSC
  
  def initialize(host: nil, package_src: nil, package: :gg, 
                 job: :execute_command)
    
    @package, @job = RSC.new(host, package_src).send(package), job

  end

  def query(s)
    r = @package.method(@job).call String.new(s)
    r != 'job not found' ? r : nil    
  end

end