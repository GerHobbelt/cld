#!/usr/bin/env rake
require "bundler/gem_tasks"

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new("spec")

task :compile do
  Dir.chdir "ext/cld" do
    sh "ruby extconf.rb"
    sh "make"
  end
end

task spec: :compile
