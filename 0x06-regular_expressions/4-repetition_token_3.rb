#!/usr/bin/env ruby
re = /^hb[^o]n$/
ARGV.each do |a|
  puts a.scan(re)
end
