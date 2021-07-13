require 'factory_bot'
require 'ffaker'
require 'httparty'
require 'rspec'
require 'pry'
require 'excon'


require_relative 'spec_helper/rest'

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV['AMBIENTE']}.yml")

World(REST,FactoryBot::Syntax::Methods)
