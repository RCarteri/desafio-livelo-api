require 'factory_bot'
require 'ffaker'
require 'httparty'
require 'rspec'

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV['AMBIENTE']}.yml")