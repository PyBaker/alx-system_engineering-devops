#!/usr/bin/env ruby

SENDER = /(?<=from:)(\+?\d+)(?=\])/
RECEIVER = /(?<=to:)(\+?\d+)(?=\])/
FLAGS = /(?<=flags:)(\+?\S+)(?=\])/

ARGV.each do |a|
  #data = a.scan(SENDER)  + "," + a.scan(RECEIVER)   + "," + a.scan(FLAGS) + "\n"

  #puts a.scan(SENDER).to_s  + "," + a.scan(RECEIVER).to_s   + "," + a.scan(FLAGS).to_s

  #data = a.scan(SENDER).to_s  + "," + a.scan(RECEIVER).to_s
  print a.scan(SENDER)[0][0]
  print ','
  print a.scan(RECEIVER)[0][0]
  print ','
  print a.scan(FLAGS)[0][0]
  puts
end
