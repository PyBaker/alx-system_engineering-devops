#!/usr/bin/env ruby
re = /^\d{10}/
ARGV.each do |a|
  puts a.scan(re)
end
