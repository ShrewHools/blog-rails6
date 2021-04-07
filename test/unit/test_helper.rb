require 'simplecov'
require 'minitest/autorun'
require 'i18n'

load_paths = []
app_root = File.expand_path('../..', __dir__)
load_paths += Dir[File.expand_path("#{app_root}/{app/models,lib}")]

load_paths.each do |load_path|
  $LOAD_PATH.unshift(load_path) unless $LOAD_PATH.include?(load_path)
end

SimpleCov.start do
  add_filter '/test/'
  add_filter '/spec/'
  add_filter '/config/'
end