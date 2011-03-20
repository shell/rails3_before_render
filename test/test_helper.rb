require 'rubygems'
require 'test/unit'
require 'active_support'
require 'ruby-debug'

ENV["RAILS_ENV"] = "test"
require File.expand_path('../../../../../config/environment', __FILE__)
require 'rails/test_help'