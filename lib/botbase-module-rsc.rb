#!/usr/bin/env ruby

# file: botbase-module-rsc.rb

# A service module used by the BotBase gem

require 'rsc'


class BotBaseModuleRSC
  
  def initialize(host: nil, package: :gg, job: :execute_command, 
                 callback: nil, debug: false)
    
    @package, @job, @bot, @debug = RSC.new(host, debug: debug).send(package), 
        job, callback, debug

  end

  def query(sender='user01', s, mode: :textchat, echo_node: 'node1')
    
    r = @package.method(@job).call String.new(s)
    
    if r == 'job not found' then
      
      @bot.log.debug 'BotBaseModuleRSC/query: job not found ' + s if @bot.log
      
      []
    else
      r
    end

  end

end
