require 'bundler'
require 'bundler/gem_tasks'

task default: [:cop, :spec]

desc 'Rubocop style tests'
task :cop do
  sh('rubocop')
end

desc 'Rspec tests'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
