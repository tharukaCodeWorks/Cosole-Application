require 'find'

file_paths = []
Find.find('/') do |path|
  file_paths << path if path =~ /.*\.conf$/
end
puts file_paths
