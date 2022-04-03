#!/usr/bin/env ruby
re = /^hb?tn/
ARGV.each do |a|
  puts a.scan(re)
end
