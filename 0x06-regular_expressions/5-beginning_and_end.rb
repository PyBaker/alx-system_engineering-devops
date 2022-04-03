#!/usr/bin/env ruby
re = /^h.*n$/
ARGV.each do |a|
  puts a.scan(re)
end
