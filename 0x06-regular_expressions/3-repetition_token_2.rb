#!/usr/bin/env ruby
re = /hbt*n$/
ARGV.each do |a|
  puts a.scan(re)
end
