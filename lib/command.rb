#!/usr/bin/env ruby

module Vbinfo
  class Command 
    include Vbinfo::Helpers

    def execute
      ids.each do |id|
        get_info(id)
      end
      exit 0
    end
    
  end
end