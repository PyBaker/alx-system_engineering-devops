#!/usr/bin/env ruby
re = /School/
ARGV.each do |a|
  puts a.scan(re)
end
