#!/usr/bin/env ruby
arr=ARGV[0].scan(/(?<=from:|to:|flags:)(.+?(?=\]))/)
puts arr[0][0] + "," + arr[1][0] + "," + arr[2][0]
