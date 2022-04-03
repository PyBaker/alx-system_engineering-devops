#!/usr/bin/env ruby
re = /^hb.?n$/
ARGV.each do |a|
  puts a.scan(re)
end
