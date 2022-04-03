#!/usr/bin/env ruby
re = /[A-Z]+/
ARGV.each do |a|
  puts a.scan(re)
end
