#!/usr/bin/env ruby
# frozen_string_literal: true

# This file is a simple runner for the test suite
puts "Running pbcopy-ruby test suite..."
require "rake"
load "Rakefile"
Rake::Task["test"].invoke 