#!/usr/bin/env ruby
re = //
ARGV.each do |a|
  puts a.scan(re)
end
