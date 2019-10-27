require 'find'

conf_file_paths = []
Find.find('/') do |path|
  conf_file_paths << path if path =~ /.*\.conf$/
end
