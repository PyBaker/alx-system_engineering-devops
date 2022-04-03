#!/usr/bin/env ruby
re = /hbt{2,5}n$/
ARGV.each do |a|
  puts a.scan(re)
end
