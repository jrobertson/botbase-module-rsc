#!/usr/bin/env ruby

# file: botbase-module-rsc.rb

# A service module used by the BotBase gem

require 'rsc'


class BotBaseModuleRSC
  
  def initialize(host: nil, package_src: nil, package: :gg, 
                 job: :execute_command, callback: nil)
    
    @package, @job = RSC.new(host, package_src).send(package), job

  end

  def query(sender='user01', s, mode: :textchat, echo_node: 'node1')
    r = @package.method(@job).call String.new(s)
    #puts 'r: ' + r.inspect
    
    if r == 'job not found' then
      notice 'botbase/debug: module-conversation queried, found ' + found[0]
      []
    else
      r
    end

  end

end