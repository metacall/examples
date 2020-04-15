#!/usr/bin/env ruby

def longest_repetition(str)
  max = str.chars.chunk(&:itself).map(&:last).max_by(&:size)
  return max ? [max[0], max.size] : ["", 0]
end
