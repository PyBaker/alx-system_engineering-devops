#!/usr/bin/env ruby
re = /^h\w?n$/
ARGV.each do |a|
  puts a.scan(re)
end
