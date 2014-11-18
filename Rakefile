require "bundler/gem_tasks"
require 'rake/testtask'

$:.unshift(File.expand_path('./lib', __FILE__))

Rake::TestTask.new do |t|
  t.libs << "jbcden_ttt"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end

task default: :test
